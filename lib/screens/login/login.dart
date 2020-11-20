import 'package:chatapp/services/auth.dart';
import 'package:chatapp/utils/static_functions.dart';
import 'package:chatapp/widgets/auth_button.dart';
import 'package:chatapp/widgets/auth_input.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    void onLoginPress() async {
      await _auth.signIn(email: _usernameController.text, password: _passwordController.text);
    }

    void onAnonLoginPress() async {
      dynamic result = await _auth.signInAnon();
      if (result == null) {
        print('error user is null');
      } else {
        print('signed in');
        print(result);
      }
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        color: hexColor('#1D1B25'),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Welcome back!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Sign in to your account',
                          style: TextStyle(
                            color: hexColor('#A5A4A8'),
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      // email input
                      AuthInputText(
                        isPassword: false,
                        icon: Icon(Icons.email),
                        hint: 'Email',
                        controller: _usernameController,
                        textInputAction: TextInputAction.next,
                        onSubmitted: (text) {FocusScope.of(context).nextFocus();},
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Row(
                    children: <Widget>[
                      // password input
                      AuthInputText(
                        isPassword: true,
                        icon: Icon(Icons.lock),
                        hint: 'Password',
                        controller: _passwordController,
                        textInputAction: TextInputAction.go,
                        onSubmitted: (text) {onLoginPress();},
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Forgot password?'),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  Row(
                    children: <Widget>[
                      // Login button
                      AuthButton(
                        text: 'Log In',
                        onTap: () {onLoginPress();},
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have an account? '),
                      Text('Sign Up'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
TextField(
  controller: _usernameController,
),
TextField(
  controller: _passwordController,
),
FlatButton(onPressed: () {onLoginPress();}, child: Text('Login')),
FlatButton(onPressed: () {onAnonLoginPress();}, child: Text('Login anonymously')),
*/