import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class DisplaySpeedCardWidget extends StatelessWidget {
  final double speed;
  final bool isDownload;

  const DisplaySpeedCardWidget({
    Key key,
    @required this.speed,
    @required this.isDownload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(18, 20, 32, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 160,
        height: 88,
        padding: const EdgeInsets.only(top: 12, bottom: 8, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(isDownload ? 'DOWNLOAD' : 'UPLOAD',
                    style: Style.cardTitleStyle),
                const SizedBox(width: 12),
                Icon(
                  isDownload ? Icons.arrow_downward : Icons.arrow_upward,
                  color: const Color.fromRGBO(74, 89, 103, 1),
                )
              ],
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: speed.toString(),
                    style: Style.cardSpeedStyle,
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Mbps',
                        style: Style.cardSpeedMeasurementStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
