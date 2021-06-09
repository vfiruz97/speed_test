import 'package:flutter/material.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class HistoryFooterCardWidget extends StatelessWidget {
  const HistoryFooterCardWidget({
    Key key,
    @required this.speed,
  }) : super(key: key);

  final Speed speed;

  String _timeFormat(DateTime date) {
    return "${date.hour}:${date.minute}";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
            child: Text(
          _timeFormat(speed.dateTime.getOrCrash()),
          style: Style.historyCardFooterStyle,
        )),
        Text(
          speed.downloadSpeed.unit.getOrCrash(),
          style: Style.historyCardFooterStyle,
        ),
        SizedBox(
          width: 90,
          child: Text(
            speed.uploadSpeed.unit.getOrCrash(),
            style: Style.historyCardFooterStyle,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
