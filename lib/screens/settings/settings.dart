import 'package:chatapp/layouts/default_container.dart';
import 'package:chatapp/services/auth.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    void logOut() async {
      await _auth.signOut();
    }

    return DefaultContainer(
      title: 'Settings',
      child: RaisedButton(child: Text('Log Out'), onPressed: () {logOut();},),
    );
  }
}
