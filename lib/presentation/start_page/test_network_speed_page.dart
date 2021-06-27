import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speedometer/flutter_speedometer.dart';
import 'package:internet_speed_test/callbacks_enum.dart';
import 'package:internet_speed_test/internet_speed_test.dart';
import 'package:speed_test/application/notification/notification_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/application/test_speed/test_speed_bloc.dart';

import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/display_speed_card_widget.dart';
import 'package:speed_test/presentation/core/widgets/download_card_title_widget.dart';
import 'package:speed_test/presentation/core/widgets/speed_value_card_widget.dart';
import 'package:speed_test/presentation/core/widgets/upload_card_title_widget.dart';

class TestNetworkSpeedPage extends StatelessWidget {
  const TestNetworkSpeedPage();

  @override
  Widget build(BuildContext context) {
    return const DisplaySpeedometrWidget();
  }
}

class DisplaySpeedometrWidget extends StatefulWidget {
  const DisplaySpeedometrWidget({
    Key key,
  }) : super(key: key);

  @override
  _DisplaySpeedometrWidgetState createState() =>
      _DisplaySpeedometrWidgetState();
}

class _DisplaySpeedometrWidgetState extends State<DisplaySpeedometrWidget> {
  final InternetSpeedTest _internetSpeedTest = InternetSpeedTest();

  double rate = 0, uploadRate = 0, downloadRate = 0;
  String uploadUnitText = 'Mbps', downloadUnitText = 'Mbps';
  bool isTestingDownload = true;

  FutureOr<void> _startDownloadTesting() async {
    setState(() {
      isTestingDownload = true;
      downloadRate = rate = 0;
      downloadUnitText = 'Mbps';
    });

    await _internetSpeedTest.startDownloadTesting(
      onDone: (double transferRate, SpeedUnit unit) {
        setState(() {
          isTestingDownload = false;
          downloadRate = transferRate;
          downloadUnitText = unit == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
          rate = 0;
        });

        Future.delayed(const Duration(seconds: 1), () => _startUploadTesting());
      },
      onProgress: (double percent, double transferRate, SpeedUnit unit) {
        setState(() {
          rate = transferRate + (math.Random().nextDouble() * 2);
          downloadUnitText = unit == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
        });
      },
      onError: (String errorMessage, String speedTestError) {
        BlocProvider.of<NotificationBloc>(context).add(
          const NotificationEvent.show(
              "Occured an unexpected error, check the connection and please try again!"),
        );
        Future.delayed(
          const Duration(seconds: 1),
          () => BlocProvider.of<PageNavigationBloc>(context).add(
            const PageNavigationEvent.changedCurrentPage(
              newCurrentPage: PageName.startPage,
              newCurrentBottomNavigationIndex: 1,
            ),
          ),
        );
      },
    );
  }

  FutureOr<void> _startUploadTesting() async {
    setState(() {
      uploadRate = rate = 0;
      uploadUnitText = 'Mbps';
    });

    final Timer _randomUploadTimer = Timer.periodic(
      const Duration(milliseconds: 200),
      (Timer t) {
        setState(() {
          rate = math.Random().nextDouble() * 3;
        });
      },
    );

    await _internetSpeedTest.startUploadTesting(
      onDone: (double transferRate, SpeedUnit unit) {
        _randomUploadTimer.cancel();
        setState(() {
          uploadRate = rate = transferRate;
          uploadUnitText = unit == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
        });

        BlocProvider.of<TestSpeedBloc>(context).add(
          TestSpeedEvent.succed(
            downloadSpeed: downloadRate,
            downloadUnit: downloadUnitText,
            uploadSpeed: uploadRate,
            uploadUnit: uploadUnitText,
          ),
        );

        Future.delayed(const Duration(seconds: 1), () {
          BlocProvider.of<PageNavigationBloc>(context).add(
            const PageNavigationEvent.changedCurrentPage(
              newCurrentBottomNavigationIndex: 1,
              newCurrentPage: PageName.startDisplayNetworkSpeedPage,
            ),
          );
        });
      },
      onProgress: (double percent, double transferRate, SpeedUnit unit) {
        setState(() {
          rate = transferRate;
          uploadUnitText = unit == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
        });
      },
      onError: (String errorMessage, String speedTestError) {
        _randomUploadTimer.cancel();
        BlocProvider.of<NotificationBloc>(context).add(
          NotificationEvent.show(
              "Occured an unexpected error, check the connection and please try again! $speedTestError"),
        );
        Future.delayed(
          const Duration(seconds: 1),
          () => BlocProvider.of<PageNavigationBloc>(context).add(
            const PageNavigationEvent.changedCurrentPage(
              newCurrentPage: PageName.startPage,
              newCurrentBottomNavigationIndex: 1,
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _startDownloadTesting();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Speedometer(
          size: 250,
          maxValue: 60,
          currentValue: rate.round(),
          warningValue: rate.round(),
          displayText: isTestingDownload ? '↓' : '↑',
          displayNumericStyle: Style.cardSpeedStyle,
          displayTextStyle: Style.speedometrDisplayTextStyle,
          warningColor: Colors.grey[900],
          meterColor: const Color.fromRGBO(79, 176, 167, 1),
          kimColor: const Color.fromRGBO(79, 176, 167, 0.6),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            DisplaySpeedCardWidget(
              titleWidget: DownloadCardTitleWidget(unit: downloadUnitText),
              bodyWidget: downloadRate == 0
                  ? const SizedBox()
                  : SpeedValueCardWidget(speed: downloadRate),
            ),
            DisplaySpeedCardWidget(
              titleWidget: UploadCardTitleWidget(unit: uploadUnitText),
              bodyWidget: uploadRate == 0
                  ? const SizedBox()
                  : SpeedValueCardWidget(speed: uploadRate),
            ),
          ],
        ),
        const SizedBox(),
      ],
    );
  }
}
