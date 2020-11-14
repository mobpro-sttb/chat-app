import 'package:chatapp/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Chat App',
  initialRoute: '/',
  routes: <String, WidgetBuilder>{
    '/': (context) => HomeScreen(),
  },
));