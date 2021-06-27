import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class UploadCardTitleWidget extends StatelessWidget {
  final String unit;
  const UploadCardTitleWidget({
    Key key,
    this.unit = 'Mbps',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Icon(
          Icons.arrow_upward,
          color: Color.fromRGBO(111, 113, 125, 1),
        ),
        const SizedBox(height: 20),
        const Text('UPLOAD', style: Style.cardTitleStyle),
        Text(unit, style: Style.cardSpeedMeasurementStyle),
      ],
    );
  }
}
