import 'package:flutter/material.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class DateTimeCardWidget extends StatelessWidget {
  const DateTimeCardWidget({
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

  String _timeFormat(DateTime date) {
    return "${date.hour}:${date.minute}";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DATE", style: Style.historyCardHeaderStyle),
              Text(
                _dateFormat(speed.dateTime.getOrCrash()),
                style: Style.historyCardHeaderValueStyle,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TIME", style: Style.historyCardHeaderStyle),
              Text(
                _timeFormat(speed.dateTime.getOrCrash()),
                style: Style.historyCardHeaderValueStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
