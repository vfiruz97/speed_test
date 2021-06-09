import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class InfoLabelWidget extends StatelessWidget {
  final IconData icon;
  final String name;
  final String value;
  final bool lastItem;

  const InfoLabelWidget({
    Key key,
    @required this.icon,
    @required this.name,
    @required this.value,
    @required this.lastItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      padding: const EdgeInsets.all(8),
      decoration: lastItem
          ? const BoxDecoration()
          : Style.historyShowCardBorderSideDecoration,
      child: Row(
        children: [
          Icon(
            icon,
            size: 26,
            color: const Color.fromRGBO(74, 89, 103, 1),
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
