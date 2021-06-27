import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SpeedValueCardWidget extends StatelessWidget {
  const SpeedValueCardWidget({
    Key key,
    @required this.speed,
  }) : super(key: key);

  final double speed;

  @override
  Widget build(BuildContext context) {
    return Text(speed.toString(), style: Style.cardSpeedStyle);
  }
}
