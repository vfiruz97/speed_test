import 'package:flutter/material.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class HistoryBodyCardWidget extends StatelessWidget {
  const HistoryBodyCardWidget({
    Key key,
    @required this.speed,
  }) : super(key: key);

  final Speed speed;

  String _dateFormat(DateTime date) {
    final String day = date.day.toString(),
        month = date.month.toString(),
        year = date.year.toString();
    return "${day.length > 1 ? day : "0$day"}/${month.length > 1 ? month : "0$month"}/$year";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Text(_dateFormat(speed.dateTime.getOrCrash()),
              style: Style.historyCardBodyStyle),
        ),
        Text(speed.downloadSpeed.value.getOrCrash().toString(),
            style: Style.historyCardBodyStyle),
        SizedBox(
          width: 90,
          child: Text(
            speed.uploadSpeed.value.getOrCrash().toString(),
            style: Style.historyCardBodyStyle,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
