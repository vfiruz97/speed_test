import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:speed_test/presentation/settings/widgets/settings_menu_item_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 29),
      child: Column(
        children: [
          SettingMenuItemWidget(
            icon: SvgPicture.asset("assets/images/info.svg"),
            title: "Term of Use",
            onTap: () => null,
          ),
          SettingMenuItemWidget(
            icon: SvgPicture.asset("assets/images/checked.svg"),
            title: "Privacy policy",
            onTap: () => null,
            backgroundColor: const Color.fromRGBO(18, 20, 32, 1),
          ),
          SettingMenuItemWidget(
            icon: SvgPicture.asset("assets/images/headphones.svg"),
            title: "Support",
            onTap: () => null,
          ),
          SettingMenuItemWidget(
            icon: SvgPicture.asset(
              "assets/images/share.svg",
              color: Colors.white,
            ),
            title: "Share the App",
            onTap: () => null,
            backgroundColor: const Color.fromRGBO(18, 20, 32, 1),
          ),
        ],
      ),
    );
  }
}
