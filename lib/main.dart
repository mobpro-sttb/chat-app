import 'package:chatapp/screens/login/login.dart';
import 'package:chatapp/models/user.dart';
import 'package:chatapp/screens/root.dart';
import 'package:chatapp/screens/wrapper.dart';
import 'package:chatapp/services/auth.dart';
import 'package:chatapp/utils/static_functions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamProvider<User>.value(
    value: AuthService().user,
    child: MaterialApp(
      title: 'Chat App',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => RootScreen(),
        '/login': (context) => LoginScreen(),
      },
      builder: (BuildContext context, Widget child) {
        return Wrapper(
          child: child,
        );
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: hexColor('#9F85FF'),
      ),
    ),
  ));
}
