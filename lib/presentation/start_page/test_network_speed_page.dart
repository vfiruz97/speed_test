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
import 'package:speed_test/presentation/core/painter/line_graph_painter.dart';
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
  Color _metColor;

  double rate = 0, uploadRate = 0, downloadRate = 0;
  String unit = 'Mbps', uploadUnitText = 'Mbps', downloadUnitText = 'Mbps';
  bool isDownloadTesting = false, isUploadTesting = false;
  List<Offset> points = [const Offset(0, 30)];

  void lineGraphDrawerHandle() {
    const int step = 3;
    const int widthPaligon = 100;

    double dx = points.last.dx + step;
    if (dx > widthPaligon) {
      points.removeAt(0);
      points = points.map((e) => Offset(e.dx - step, e.dy)).toList();
      dx -= step;
    }
    points.add(Offset(dx, math.Random().nextInt(32).toDouble()));
    setState(() {});
  }

  FutureOr<void> _startDownloadTesting() async {
    setState(() {
      _metColor = const Color.fromRGBO(79, 176, 167, 1);
      downloadRate = rate = 0;
      downloadUnitText = unit = 'Mbps';
      isDownloadTesting = true;
    });

    await _internetSpeedTest.startDownloadTesting(
      onDone: (double transferRate, SpeedUnit unitT) {
        isDownloadTesting = false;
        lineGraphDrawerHandle();
        setState(() {
          downloadRate = rate = transferRate;
          downloadUnitText = unit = unitT == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
        });

        Future.delayed(
            const Duration(microseconds: 500), () => _startUploadTesting());
      },
      onProgress: (double percent, double transferRate, SpeedUnit unitT) {
        setState(() {
          lineGraphDrawerHandle();
          rate = transferRate + (math.Random().nextDouble() * 2);
          unit = unitT == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
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
                newCurrentPage: PageName.startPage),
          ),
        );
      },
    );
  }

  FutureOr<void> _startUploadTesting() async {
    setState(() {
      isUploadTesting = true;
      points = [const Offset(0, 30)];
      _metColor = const Color.fromRGBO(162, 109, 217, 1);
      uploadRate = rate = 0;
      uploadUnitText = unit = 'Mbps';
    });

    final Timer _randomUploadTimer = Timer.periodic(
      const Duration(milliseconds: 200),
      (Timer t) {
        rate = math.Random().nextDouble() * 2;
        lineGraphDrawerHandle();
      },
    );

    await _internetSpeedTest.startUploadTesting(
      onDone: (double transferRate, SpeedUnit unitT) {
        isUploadTesting = false;
        _randomUploadTimer.cancel();
        setState(() {
          uploadRate = rate = transferRate;
          uploadUnitText = unit = unitT == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
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
              newCurrentBottomNavigationIndex: 0,
              newCurrentPage: PageName.startDisplayNetworkSpeedPage,
            ),
          );
        });
      },
      onProgress: (double percent, double transferRate, SpeedUnit unitT) {
        setState(() {
          rate = transferRate;
          unit = unitT == SpeedUnit.Kbps ? 'Kbps' : 'Mbps';
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
                newCurrentPage: PageName.startPage),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _metColor = const Color.fromRGBO(79, 176, 167, 1);
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
          displayText: unit,
          displayNumericStyle: Style.cardSpeedStyle,
          displayTextStyle: Style.cardSpeedMeasurementStyle,
          warningColor: Colors.grey[900],
          meterColor: _metColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            DisplaySpeedCardWidget(
              backgroundColor: Colors.black,
              titleWidget: const DownloadCardTitleWidget(),
              bodyWidget: isDownloadTesting
                  ? CustomPaint(
                      size: const Size(160, 32),
                      willChange: true,
                      painter: LineGraphPainter(
                        points: points,
                        color: _metColor,
                      ))
                  : downloadRate == 0
                      ? const SizedBox()
                      : SpeedValueCardWidget(speed: downloadRate, unit: unit),
            ),
            DisplaySpeedCardWidget(
              backgroundColor: Colors.black,
              titleWidget: const UploadCardTitleWidget(),
              bodyWidget: isUploadTesting
                  ? CustomPaint(
                      size: const Size(160, 32),
                      willChange: true,
                      painter: LineGraphPainter(
                        points: points,
                        color: _metColor,
                      ))
                  : uploadRate == 0
                      ? const SizedBox()
                      : SpeedValueCardWidget(speed: uploadRate, unit: unit),
            ),
          ],
        ),
        const SizedBox(),
      ],
    );
  }
}
