import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class InfoLabelWidget extends StatelessWidget {
  final IconData icon;
  final String name;
  final String value;
  final Color backgroundColor;

  const InfoLabelWidget({
    Key key,
    @required this.icon,
    @required this.name,
    @required this.value,
    this.backgroundColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Icon(
            icon,
            size: 26,
            color: const Color.fromRGBO(111, 113, 125, 1),
          ),
          const SizedBox(width: 18),
          Text(name, style: Style.historyShowNameStyle),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: Style.historyShowValueStyle,
            ),
          ),
        ],
      ),
    );
  }
}
