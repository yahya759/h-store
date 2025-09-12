import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text("Notification"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Navigate to Notification settings
            },
          ),
          Divider(height: 1),

          ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text("Security"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Navigate to Security settings
            },
          ),
          Divider(height: 1),

          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Help"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Navigate to Help page
            },
          ),
          Divider(height: 1),

          SwitchListTile(
            secondary: Icon(Icons.dark_mode_outlined),
            title: Text("Dark Mode"),
            value: isDarkMode,
            onChanged: (val) {
              setState(() {
                isDarkMode = val;
              });
            },
          ),
          Divider(height: 1),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              // Logout logic
            },
          ),
        ],
      ),
    );
  }
}
