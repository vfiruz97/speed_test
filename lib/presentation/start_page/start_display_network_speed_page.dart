import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';
import 'package:speed_test/presentation/core/widgets/display_speed_card_widget.dart';
import 'package:speed_test/presentation/core/widgets/restart_button_widget.dart';

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
            padding: const EdgeInsets.all(24),
            alignment: Alignment.center,
            child: Column(
              children: [
                const Text('ALL FINISHED', style: Style.textFirstHeader),
                const SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const DisplaySpeedCardWidget(
                      speed: 49.32,
                      isDownload: true,
                    ),
                    const SizedBox(width: 4),
                    const DisplaySpeedCardWidget(
                      speed: 18.93,
                      isDownload: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const RestartButtonWidget(),
        ],
      ),
    );
  }
}
