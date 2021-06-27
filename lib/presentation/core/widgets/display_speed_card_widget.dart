import 'package:flutter/material.dart';

class DisplaySpeedCardWidget extends StatelessWidget {
  final Widget titleWidget;
  final Widget bodyWidget;

  const DisplaySpeedCardWidget({
    Key key,
    @required this.titleWidget,
    @required this.bodyWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(18, 20, 32, 1),
      child: Container(
        width: 152,
        height: 160,
        padding: const EdgeInsets.only(top: 20, bottom: 16, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleWidget,
            bodyWidget,
          ],
        ),
      ),
    );
  }
}
