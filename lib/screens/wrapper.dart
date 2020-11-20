import 'package:chatapp/screens/login/login.dart';
import 'package:chatapp/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {

  Widget child;

  Wrapper({Widget child}) {
    this.child = child;
  }

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return LoginScreen();
    } else {
      return this.child;
    }
  }
}