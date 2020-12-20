import 'package:chatapp/utils/static_functions.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
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
                    child: Text(
                      'Roy Ryando',
                      style: TextStyle(
                          color: hexColor('#E2E1E3'),
                          fontSize: 17,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'
                      ),
                    ),
                  )
                ],
              ),
              Icon(
                Icons.send,
                color: hexColor('#323247'),
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
