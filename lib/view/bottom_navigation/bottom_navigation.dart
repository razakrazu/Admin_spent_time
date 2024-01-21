import 'package:flutter/material.dart';
import 'package:spent_time_admin/view/appruved_property/apruved_property.dart';
import 'package:spent_time_admin/view/home/home_screen.dart';
import 'package:spent_time_admin/view/settings/settings.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List _pages = [
  HomeScreen(),
ApruvdPropertyScreen(),
 
    SettingScreen()
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
backgroundColor: const Color.fromARGB(255, 69, 69, 84), 
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Color.fromARGB(255, 118, 224, 248),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.contact_mail), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}