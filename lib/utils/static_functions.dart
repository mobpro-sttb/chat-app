import 'package:flutter/material.dart';

Color hexColor(String code){
  return (code.length == 7 && code[0] == '#')
      ? Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000)
      : Colors.white;
}