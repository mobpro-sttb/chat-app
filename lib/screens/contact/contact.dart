import 'package:chatapp/layouts/default_container.dart';
import 'package:chatapp/utils/static_functions.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      title: 'Contact',
      child: Text('Ini text...'),
      actionIcon: IconButton(
        color: hexColor('#A5A4A8'),
        icon: Icon(Icons.person_add),
        onPressed: (){print('OK2');},
        iconSize: 22,
      ),
    );
  }
}
