import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class NotificationDialogWidget extends StatelessWidget {
  /// [NotificationDialogWidget] will return
  /// {"pressedNo": true, "pressedYes": false}
  final String title;
  final String message;

  const NotificationDialogWidget({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 270,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(30, 30, 30, 0.9),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 270,
              decoration: Style.dialogBoxDecoration,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: Style.dialogTitleStyle,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: Style.dialogMessageStyle,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context, [
                      {"pressedNo": true, "pressedYes": false}
                    ]),
                    child: const Text(
                      "No",
                      style: Style.dialogButtonStyle,
                    ),
                  ),
                ),
                Container(
                  height: 43.5,
                  decoration: Style.dialogSrightWallDecoration,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context, [
                      {"pressedNo": false, "pressedYes": true}
                    ]),
                    child: const Text(
                      "Yes",
                      style: Style.dialogButtonStyle,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
