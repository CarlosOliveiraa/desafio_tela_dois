import 'package:flutter/material.dart';

import '../constants/colors.dart';

enum Page { signIn, signUp }

class LoginWidgets extends StatelessWidget {
  final double width;
  final double height;
  final Page page;
  final String title;
  final String info;
  final String action;

  const LoginWidgets({
    Key? key,
    this.width = 210,
    this.height = 262,
    this.page = Page.signIn,
    this.title = "Bem Vindo",
    this.info = "Entrar",
    this.action = "Registrar",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorsApp colors = ColorsApp();

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: colors.style1),
          Text(
            info,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'HotPizza',
                fontWeight: FontWeight.w700,
                color: colors.thirdColor),
          ),
          Text(
            action,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'HotPizza',
                fontWeight: FontWeight.w700,
                color: colors.thirdColor),
          ),
        ],
      ),
    );
  }
}
