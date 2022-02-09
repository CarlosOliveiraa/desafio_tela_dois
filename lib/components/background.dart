import 'package:flutter/material.dart';

import '../decorations/textFormField_decoration.dart';

class BackGround extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const BackGround(
      {Key? key, this.width = 259, this.height = 558, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextFormFieldDecoration customDecoration = TextFormFieldDecoration();

    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        width: width,
        height: height,
        decoration: customDecoration.bkDecoration,
        child: child,
      ),
    );
  }
}
