import 'package:flutter/material.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SpeedCardWidget extends StatelessWidget {
  final Speed speed;
  const SpeedCardWidget({
    Key key,
    @required this.speed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DOWNLOAD", style: Style.historyCardHeaderStyle),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    speed.downloadSpeed.value.getOrCrash().toString(),
                    style: Style.cardSpeedStyle,
                  ),
                  const SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      speed.downloadSpeed.unit.getOrCrash(),
                      style: Style.historyCardHeaderStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("UPLOAD", style: Style.historyCardHeaderStyle),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    speed.uploadSpeed.value.getOrCrash().toString(),
                    style: Style.cardSpeedStyle,
                  ),
                  const SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      speed.uploadSpeed.unit.getOrCrash(),
                      style: Style.historyCardHeaderStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
