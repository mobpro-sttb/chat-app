import 'package:chatapp/layouts/in_chat_container.dart';
import 'package:flutter/material.dart';

class InChatScreen extends StatefulWidget {
  int id;

  InChatScreen({this.id});

  @override
  _InChatScreenState createState() => _InChatScreenState();
}

class _InChatScreenState extends State<InChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InChatContainer(
        title: 'John Doe',
        child: Column(
          children: <Widget>[
            // TODO: chat section here
          ],
        ),
      ),
    );
  }
}
