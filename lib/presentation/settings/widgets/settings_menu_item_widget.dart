import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SettingMenuItemWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final Function onTap;
  final Color backgroundColor;

  const SettingMenuItemWidget({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.onTap,
    this.backgroundColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      color: backgroundColor,
      child: ListTile(
        leading: icon,
        title: Text(title, style: Style.historyCardHeaderValueStyle),
        trailing: const Icon(
          Icons.chevron_right,
          color: Color.fromRGBO(235, 235, 245, 0.3),
          size: 28,
        ),
        onTap: () => onTap(),
      ),
    );
  }
}
