import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SettingsPageTitleBarWidget extends StatelessWidget {
  const SettingsPageTitleBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color.fromRGBO(23, 34, 48, 1),
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: Style.titleBarTitleStyle,
      ),
    );
  }
}
