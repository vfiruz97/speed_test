import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SubscripListItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const SubscripListItemWidget({
    Key key,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 1.5),
        Icon(icon),
        const SizedBox(width: 13.5),
        Text(title, style: Style.subscriptionListItemStyle),
      ],
    );
  }
}
