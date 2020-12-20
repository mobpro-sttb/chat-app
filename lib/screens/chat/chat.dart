import 'package:chatapp/layouts/default_container.dart';
import 'package:chatapp/screens/chat/local_widgets/chat_item.dart';
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
      child: Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: ListView(
            children: <Widget>[
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
              ChatItem(),
            ],
          ),
        ),
      ),
    );
  }
}
