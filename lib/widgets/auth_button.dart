import 'package:chatapp/utils/static_functions.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function onTap;

  AuthButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: this.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: hexColor('#7E59FF'),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  this.text,
                  style: TextStyle(
                    fontSize: 14.5,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}