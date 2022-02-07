import 'package:flutter/material.dart';

class ColorsApp {
  final Color firstColor = const Color(0xffE8B09F);
  final Color secondColor = const Color(0xffE8BC7C);
  final Color thirdColor = const Color(0xffE88327);
  final TextStyle style1 = const TextStyle(
    fontSize: 35,
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
  final Decoration bkDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xffE8B09F),
        Color(0xffE8BC7C),
      ],
    ),
  );
}
