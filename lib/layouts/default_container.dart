import 'package:chatapp/utils/static_functions.dart';
import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  Widget child;
  String title;
  IconButton actionIcon;

  DefaultContainer({Widget child, String title, IconButton actionIcon}) {
    this.child = child;
    this.title = title;
    this.actionIcon = actionIcon;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: hexColor('#1D1B25'),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 24,
                      color: hexColor('#E2E1E3'),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  this.actionIcon != null ? this.actionIcon : Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                  ),
                ],
              ),
            ),
            this.child
          ],
        ),
      )
    );
  }
}
