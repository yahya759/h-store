import 'package:flutter/material.dart';
import 'package:hstore/featuer/homepage/presintion/view/pages/home_page.dart';
import 'package:hstore/featuer/search/presintion/view/pages/search.dart';
import 'package:hstore/featuer/setting/prisention/view/pages/setting.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // هنا ضفت ليست بالواجهات (كل واجهة Widget مستقل)
  final List<Widget> _pages = <Widget>[
    HomePage(),
    Search(),
    Center(child: Text('Notifications Page', style: TextStyle(fontSize: 24))),
  SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // بيعرض الصفحة حسب الإندكس
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
         unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
