import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SettingMenuItemWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  const SettingMenuItemWidget({
    Key key,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 40,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(38, 48, 60, 1),
        ),
        child: Text(title, style: Style.historyCardHeaderValueStyle),
      ),
    );
  }
}
