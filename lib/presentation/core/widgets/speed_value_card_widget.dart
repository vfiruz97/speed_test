import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SpeedValueCardWidget extends StatelessWidget {
  const SpeedValueCardWidget({
    Key key,
    @required this.speed,
    @required this.unit,
  }) : super(key: key);

  final double speed;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: speed.toString(),
            style: Style.cardSpeedStyle,
            children: <TextSpan>[
              TextSpan(
                text: unit,
                style: Style.cardSpeedMeasurementStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
