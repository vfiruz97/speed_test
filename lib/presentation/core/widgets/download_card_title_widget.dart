import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class DownloadCardTitleWidget extends StatelessWidget {
  final String unit;
  const DownloadCardTitleWidget({
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
          Icons.arrow_downward,
          color: Color.fromRGBO(111, 113, 125, 1),
        ),
        const SizedBox(height: 20),
        const Text('DOWNLOAD', style: Style.cardTitleStyle),
        Text(unit, style: Style.cardSpeedMeasurementStyle),
      ],
    );
  }
}
