import 'package:chatapp/layouts/default_container.dart';
import 'package:chatapp/screens/contact/local_widgets/contact_item.dart';
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
      child: Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: ListView(
            children: <Widget>[
              ContactItem(),
              ContactItem(),
              ContactItem(),
              ContactItem(),
              ContactItem(),
              ContactItem(),
              ContactItem(),
              ContactItem(),
              ContactItem(),
            ],
          ),
        ),
      ),
      actionIcon: IconButton(
        color: hexColor('#A5A4A8'),
        icon: Icon(Icons.person_add),
        onPressed: (){print('OK2');},
        iconSize: 22,
      ),
    );
  }
}
