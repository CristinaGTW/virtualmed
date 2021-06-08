import 'package:flutter/material.dart';

import '../../components.dart';
import 'components/chats/chats_tab.dart';
import 'components/profile/doctor_profile_tab.dart';
import 'components/requests/requests_tab.dart';

class MainNavDoctor extends StatefulWidget {
  @override
  _MainNavDoctorState createState() => _MainNavDoctorState();
}

class _MainNavDoctorState extends State<MainNavDoctor> {
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.white60;
  final _selectedBgColor = KMenuSelectorColor;
  final _unselectedBgColor = kPrimaryColor;
  int _currentIndex = 0;

  final tabs = [
    ChatTab(),
    RequestsTab(),
    DoctorProfileTab(),
  ];

  final tabsText = [
    "Chats",
    "Requests",
    "Profile"
  ];

  Color _getBgColor(int index) {
    return _currentIndex == index ? _selectedBgColor : _unselectedBgColor;
  }

  Color _getItemColor(int index) {
    return _currentIndex == index ? _selectedItemColor : _unselectedItemColor;
  }

  void selectItemOnTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildIcon(IconData iconData, String text, int index) {
    return Container(
      width: double.infinity,
      height: kBottomNavigationBarHeight,
      padding: EdgeInsets.symmetric(vertical: 5),
      color: _getBgColor(index),
      child: Material(
        color: _getBgColor(index),
        child: Column(
          children: <Widget>[
            InkWell(
              child: Icon(iconData),
            ),
            Text(
              text,
              style: TextStyle(color: _getItemColor(index)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Text(tabsText[_currentIndex]),
            ],
          ),
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.chat, "Chats", 0),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.help, "Requests", 1),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person, "Profile", 2),
            title: SizedBox.shrink(),
          ),
        ],
        onTap: (index) => selectItemOnTap(index),
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
      ),
    );
  }
}
