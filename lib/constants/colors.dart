import 'package:flutter/material.dart';

class ColorsApp {
  final Color firstColor = const Color(0xffE8B09F);
  final Color secondColor = const Color(0xffE8BC7C);
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
