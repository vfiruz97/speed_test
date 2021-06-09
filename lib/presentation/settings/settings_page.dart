import 'package:flutter/material.dart';

import 'package:speed_test/presentation/settings/widgets/settings_menu_item_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 32,
      ),
      child: Column(
        children: [
          SettingMenuItemWidget(
            icon: Icons.info,
            title: "Terms and conditions",
            onTap: () => null,
          ),
          const SizedBox(height: 16),
          SettingMenuItemWidget(
            icon: Icons.check_circle,
            title: "Privacy policy",
            onTap: () => null,
          ),
          const SizedBox(height: 16),
          SettingMenuItemWidget(
            icon: Icons.help,
            title: "Help",
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
