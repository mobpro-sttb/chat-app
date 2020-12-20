import 'package:chatapp/utils/static_functions.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: Colors.transparent,
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1447194047554-cfe888edc98c?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                      width: 45,
                      height: 45,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Roy Ryando',
                            style: TextStyle(
                              color: hexColor('#E2E1E3'),
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'
                            ),
                          ),
                        ),
                        Text(
                          'bla lashl djasljdlaks ',
                          style: TextStyle(
                            color: hexColor('#a3a3a3'),
                            fontSize: 13,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
