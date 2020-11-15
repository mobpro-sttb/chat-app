import 'package:chatapp/screens/chat/chat.dart';
import 'package:chatapp/screens/contact/contact.dart';
import 'package:chatapp/screens/settings/settings.dart';
import 'package:chatapp/utils/static_functions.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedPage = 1;
  final List<Widget> _pages = [
    ContactScreen(),
    ChatScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPage],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: hexColor('#1D1B25'),
        buttonBackgroundColor: hexColor('#272336'),
        color: hexColor('#272336'),
        height: 50.0,
        animationDuration: Duration(milliseconds: 400),
        index: 1,
        items: <Widget>[
          Icon(Icons.people, size: 25, color: hexColor('#9F85FF'),),
          Icon(Icons.chat_bubble, size: 25, color: hexColor('#9F85FF'),),
          Icon(Icons.settings, size: 25, color: hexColor('#9F85FF'),),
        ],
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
    );
  }
}
