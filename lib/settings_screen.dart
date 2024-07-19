import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Profile'),
            onTap: () {
              // Navigate to profile settings
            },
          ),
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              // Navigate to notification settings
            },
          ),
        ],
      ),
    );
  }
}
