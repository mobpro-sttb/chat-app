import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthInputText extends StatefulWidget {
  final Icon icon;
  final String hint;
  final TextEditingController controller;
  final bool isPassword;
  final Function onSubmitted;
  final TextInputAction textInputAction;
  final FocusNode focusNode;

  const AuthInputText({
    this.icon,
    this.hint,
    this.controller,
    this.isPassword,
    this.onSubmitted,
    this.textInputAction,
    this.focusNode,
  });

  @override
  _AuthInputTextState createState() => _AuthInputTextState();
}

class _AuthInputTextState extends State<AuthInputText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        focusNode: this.widget.focusNode,
        textInputAction: this.widget.textInputAction,
        onSubmitted: this.widget.onSubmitted,
        controller: this.widget.controller,
        enableSuggestions: !this.widget.isPassword,
        autocorrect: !this.widget.isPassword,
        obscureText: this.widget.isPassword,
        decoration: InputDecoration(
          hintText: this.widget.hint,
          prefixIcon: this.widget.icon,
          contentPadding: EdgeInsets.only(top: 15),
          prefixStyle: TextStyle(
            color: Colors.white
          ),
        ),
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Montserrat',
        ),
      )
    );
  }
}