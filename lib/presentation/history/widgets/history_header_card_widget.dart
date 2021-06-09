import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class HistoryHeaderCardWidget extends StatelessWidget {
  const HistoryHeaderCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Expanded(
          child: Text("DATE", style: Style.historyCardHeaderStyle),
        ),
        Text("DOWNLOAD", style: Style.historyCardHeaderStyle),
        SizedBox(
          width: 90,
          child: Text(
            "UPLOAD",
            style: Style.historyCardHeaderStyle,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
