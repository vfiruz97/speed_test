import 'package:flutter/material.dart';

class DisplaySpeedCardWidget extends StatelessWidget {
  final Widget titleWidget;
  final Widget bodyWidget;
  final Color backgroundColor;

  const DisplaySpeedCardWidget({
    Key key,
    @required this.titleWidget,
    @required this.bodyWidget,
    @required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
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
            titleWidget,
            bodyWidget,
          ],
        ),
      ),
    );
  }
}
