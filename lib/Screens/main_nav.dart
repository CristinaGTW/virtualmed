import 'package:flutter/material.dart';

import '../components.dart';
import 'MapScreen/map_tab.dart';
import 'ProfileScreen/profile_tab.dart';
import 'QuickCheckScreen/quick_check_tab.dart';
import 'SearchScreen/search_tab.dart';

abstract class MainNav extends StatefulWidget {}

class MainNavUnauth extends MainNav {
  @override
  _MainNavState createState() => _MainNavUnauthState();
}

class MainNavAuth extends MainNav {
  @override
  _MainNavState createState() => _MainNavAuthState();
}

abstract class _MainNavState extends State<MainNav> {
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.white60;
  final _selectedBgColor = KMenuSelectorColor;
  final _unselectedBgColor = kPrimaryColor;
  int _currentIndex = 0;

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
}

class _MainNavUnauthState extends _MainNavState {
  final tabs = [
    QuickCheckTab(),
    SearchTab(),
    MapTab(),
  ];
  final tabsText = [
    "Quick Symptom Checker",
    "Search",
    "Find Medical Centers"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Text(tabsText[_currentIndex]),
              Positioned(
                // left: size.width * 0.7,
                right: 20,
                child: IconButton(
                  icon: Icon(Icons.chat),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
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
            icon: _buildIcon(Icons.local_hospital, "Quick check", 0),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.search, "Search", 1),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.map, "Maps", 2),
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

class _MainNavAuthState extends _MainNavState {
  final tabs = [
    QuickCheckTab(),
    SearchTab(),
    MapTab(),
    ProfileTab(),
  ];
  final tabsText = [
    "Quick Symptom Checker",
    "Search Doctors / Reviews",
    "Find Medical Centers",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Text(tabsText[_currentIndex]),
              Positioned(
                // left: size.width * 0.7,
                right: 20,
                child: IconButton(
                  icon: Icon(Icons.chat),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
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
            icon: _buildIcon(Icons.local_hospital, "Quick check", 0),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.search, "Search", 1),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.map, "Maps", 2),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person, "Profile", 3),
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
