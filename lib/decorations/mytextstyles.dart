import 'package:flutter/material.dart';

class MyTextStyles {
  final TextStyle myStyle = const TextStyle(
    fontSize: 25,
    color: Color(0xffE88327),
    fontWeight: FontWeight.w700,
    fontFamily: 'HotPizza',
    shadows: [
      Shadow(
        color: Colors.black,
        blurRadius: 2.0,
        offset: Offset(3, 3),
      )
    ],
  );
  final TextStyle myStyle2 = const TextStyle(
    fontSize: 15,
    fontFamily: 'HotPizza',
    fontWeight: FontWeight.w700,
    color: Color(0xffE88327),
    shadows: [
      Shadow(
        color: Colors.black,
        blurRadius: 2.0,
        offset: Offset(3, 3),
      )
    ],
  );
  final TextStyle myStyle3 = const TextStyle(
    fontSize: 12,
    fontFamily: 'HotPizza',
    fontWeight: FontWeight.w700,
    color: Color(0xffE88327),
    decoration: TextDecoration.underline,
    shadows: [
      Shadow(
        color: Colors.black,
        blurRadius: 2.0,
        offset: Offset(1, 2),
      )
    ],
  );
}
