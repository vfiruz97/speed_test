import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class HistoryTitleColumnWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const HistoryTitleColumnWidget({
    Key key,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 58) / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: Style.historyTitleColumnStyle,
          ),
          const SizedBox(height: 4),
          Text(
            subTitle,
            style: Style.speedometrDisplayTextStyle,
          ),
          const SizedBox(height: 29),
        ],
      ),
    );
  }
}
