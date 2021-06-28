import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class DisplaySpeedCardWidget extends StatelessWidget {
  final String label;
  final String speedValue;
  const DisplaySpeedCardWidget({
    Key key,
    this.label = "DOWNLOAD",
    this.speedValue = "─ ─",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 93,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(16, 26, 38, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            speedValue,
            style: Style.speedValueCardStyle,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: Style.labelCardStyle,
          ),
        ],
      ),
    );
  }
}
