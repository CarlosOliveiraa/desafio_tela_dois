import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

import '../decorations/textFormField_decoration.dart';

enum Dec { name, email, pass }

class MyTextFormField extends StatelessWidget {
  final Dec myDecoration;
  final TextInputType keyBoardInputType;
  final bool obscureText;
  const MyTextFormField({
    Key? key,
    required this.keyBoardInputType,
    this.myDecoration = Dec.name,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorsApp colors = ColorsApp();
    TextFormFieldDecoration customDecoration = TextFormFieldDecoration();

    late InputDecoration decoration;

    switch (myDecoration) {
      case Dec.name:
        decoration = customDecoration.nameDecoration;
        break;
      case Dec.email:
        decoration = customDecoration.emailDecoration;
        break;
      case Dec.pass:
        decoration = customDecoration.passDecoration;
        break;
      default:
    }

    return TextFormField(
      style: TextStyle(color: colors.thirdColor),
      decoration: decoration,
      obscureText: obscureText,
    );
  }
}
