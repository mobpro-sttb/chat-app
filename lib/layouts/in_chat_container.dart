import 'package:chatapp/utils/static_functions.dart';
import 'package:flutter/material.dart';

class InChatContainer extends StatelessWidget {
  Widget child;
  String title;

  InChatContainer({Widget child, String title}) {
    this.child = child;
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {

    void onBack() {
      Navigator.of(context).pop();
    }

    return SafeArea(
        child: Container(
          color: hexColor('#1D1B25'),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {onBack();},
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: hexColor('#E2E1E3'),),
                          onPressed: null,
                          iconSize: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        this.title,
                        style: TextStyle(
                          fontSize: 22,
                          color: hexColor('#E2E1E3'),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              this.child,
            ],
          ),
        )
    );
  }
}
