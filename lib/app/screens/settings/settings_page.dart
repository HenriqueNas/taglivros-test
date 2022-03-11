import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:technical_template/app/global/styles/app_colors.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notification = false;
  bool fingerPrint = true;

  style() {}

  @override
  Widget build(BuildContext context) {
    IconData notificationIcon =
        notification ? FeatherIcons.bell : FeatherIcons.bellOff;

    const EdgeInsets titlePadding =
        EdgeInsets.only(top: 32, left: 16, bottom: 8);

    return SafeArea(
      child: SettingsList(
        backgroundColor: Theme.of(context).backgroundColor,
        sections: [
          SettingsSection(
            titlePadding: titlePadding,
            titleTextStyle: TextStyle(
              color: AppColors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            title: 'Configurations',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(FeatherIcons.globe),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: 'App notification',
                leading: Icon(notificationIcon),
                switchValue: notification,
                onToggle: (value) {
                  setState(() {
                    notification = value;
                  });
                },
              ),
            ],
          ),
          SettingsSection(
            titlePadding: titlePadding,
            title: 'Account',
            titleTextStyle: TextStyle(
              color: AppColors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            tiles: [
              SettingsTile(
                title: 'Name',
                subtitle: 'Jonh Doe',
                leading: Icon(FeatherIcons.user),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: 'Phone number',
                subtitle: 'not set',
                leading: Icon(FeatherIcons.phone),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: 'Email',
                subtitle: 'jonh.doe@mail.com',
                leading: Icon(FeatherIcons.mail),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: 'Sign out',
                leading: Icon(FeatherIcons.logOut),
                onPressed: (BuildContext context) {},
              ),
            ],
          ),
          SettingsSection(
            titlePadding: titlePadding,
            title: 'Security',
            titleTextStyle: TextStyle(
              color: AppColors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            tiles: [
              SettingsTile(
                title: 'Change password',
                leading: Icon(FeatherIcons.lock),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: 'Use fingerprint',
                leading: Icon(Icons.fingerprint),
                switchValue: fingerPrint,
                onToggle: (value) {
                  setState(() {
                    fingerPrint = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
