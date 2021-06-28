import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class InfoLabelWidget extends StatelessWidget {
  final String name;
  final String value;

  const InfoLabelWidget({
    Key key,
    @required this.name,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: Style.historyShowNameStyle),
          Text(value, style: Style.historyShowValueStyle),
        ],
      ),
    );
  }
}
