import 'package:flutter/material.dart';
import 'package:speed_test/domain/speed/speed.dart';

import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/display_speed_card_widget.dart';
import 'package:speed_test/presentation/core/widgets/download_card_title_widget.dart';
import 'package:speed_test/presentation/core/widgets/restart_button_widget.dart';
import 'package:speed_test/presentation/core/widgets/speed_value_card_widget.dart';
import 'package:speed_test/presentation/core/widgets/upload_card_title_widget.dart';

class StartDisplayNetworkSpeedPage extends StatelessWidget {
  const StartDisplayNetworkSpeedPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Container(
            alignment: Alignment.center,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('RESULT', style: Style.textFirstHeader),
                const SizedBox(height: 24),
                const SpeedCards(),
              ],
            ),
          ),
          const RestartButtonWidget(),
        ],
      ),
    );
  }
}

class SpeedCards extends StatefulWidget {
  const SpeedCards({
    Key key,
  }) : super(key: key);

  @override
  _SpeedCardsState createState() => _SpeedCardsState();
}

class _SpeedCardsState extends State<SpeedCards> {
  SpeedRepository speedRepository;
  double uploadRate = 0;
  double downloadRate = 0;
  String uploadUnit = 'Mbps';
  String downloadUnit = 'Mbps';

  @override
  void initState() {
    super.initState();
    speedRepository = SpeedRepository();

    _getSpeed();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplaySpeedCardWidget(
          titleWidget: const DownloadCardTitleWidget(),
          bodyWidget: SpeedValueCardWidget(speed: downloadRate),
        ),
        const SizedBox(width: 8),
        DisplaySpeedCardWidget(
          titleWidget: const UploadCardTitleWidget(),
          bodyWidget: SpeedValueCardWidget(speed: uploadRate),
        ),
      ],
    );
  }

  Future<void> _getSpeed() async {
    final Speed speed = await speedRepository.getLast();
    setState(() {
      downloadRate = speed.downloadSpeed.value.getOrCrash();
      downloadUnit = speed.downloadSpeed.unit.getOrCrash();
      uploadRate = speed.uploadSpeed.value.getOrCrash();
      uploadUnit = speed.uploadSpeed.unit.getOrCrash();
    });
  }
}
