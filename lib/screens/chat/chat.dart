import 'package:chatapp/layouts/default_container.dart';
import 'package:chatapp/utils/static_functions.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      title: 'Messages',
      child: Text('Ini text...'),
    );
  }
}
