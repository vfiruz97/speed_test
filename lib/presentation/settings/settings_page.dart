import 'package:flutter/material.dart';

import 'package:speed_test/presentation/settings/widgets/settings_menu_item_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          const SizedBox(height: 32),
          SettingMenuItemWidget(
            title: "Privacy Policy",
            onTap: () => null,
          ),
          const SizedBox(height: 16),
          SettingMenuItemWidget(
            title: "Term of Use",
            onTap: () => null,
          ),
          const SizedBox(height: 16),
          SettingMenuItemWidget(
            title: "Supprot",
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
