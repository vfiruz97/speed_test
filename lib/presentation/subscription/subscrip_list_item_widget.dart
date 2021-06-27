import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SubscripListItemWidget extends StatelessWidget {
  final Widget icon;
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
        icon,
        const SizedBox(width: 16),
        Text(title, style: Style.subscriptionListItemStyle),
      ],
    );
  }
}
