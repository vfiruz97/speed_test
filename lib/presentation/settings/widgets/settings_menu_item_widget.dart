import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SettingMenuItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const SettingMenuItemWidget({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(18, 20, 32, 1),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color.fromRGBO(235, 235, 245, 0.3),
          size: 28,
        ),
        title: Text(title, style: Style.historyCardBodyStyle),
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
