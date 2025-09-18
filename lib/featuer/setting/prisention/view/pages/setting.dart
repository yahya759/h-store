import 'package:flutter/material.dart';
import 'package:hstore/const/move.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/login/presention/view/pages/loginpage.dart';
import 'package:hstore/featuer/notfy/presention/view/pages/notfy.dart';

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
      
      body: Padding(
        padding: const EdgeInsets.only(left:20 , right: 20 , top: 20 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Icon(Icons.person, color: Colors.white, size: 40),
            ),
            SizedBox(height: 10),
            Text("John Doe", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("i care about iphone and alitel about samsung" , style: styles.font14,),
            SizedBox(height: 40),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.notifications_none),
                    title: Text("Notification"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      context.topage(Notfy());
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
                      context.topage(Loginpage());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
