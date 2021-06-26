import 'package:flutter/material.dart';
import 'package:speed_test/presentation/asserts/style.dart';

class SettingsPageTitleBarWidget extends StatelessWidget {
  const SettingsPageTitleBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: Style.titleBarDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SizedBox(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Text(
              'Settings',
              style: Style.titleBarTitleStyle,
            ),
          ),
        ],
      ),
    );
  }
}
