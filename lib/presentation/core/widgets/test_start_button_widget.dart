import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class TestStartButtonWidget extends StatelessWidget {
  final String label;
  final Function onPressed;
  const TestStartButtonWidget({
    Key key,
    @required this.label,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const CircleBorder(),
      onPressed: () => onPressed(),
      child: Container(
        width: 189,
        height: 189,
        alignment: Alignment.center,
        decoration: Style.startButtonDecoration,
        child: Text(
          label,
          style: Style.startButtonStyle,
        ),
      ),
    );
  }
}
