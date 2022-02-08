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
          TextFormField(
            style: TextStyle(color: colors.thirdColor),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.mail,
                color: colors.thirdColor,
              ),
              labelStyle: TextStyle(
                  color: colors.thirdColor, fontWeight: FontWeight.w600),
              labelText: "E-mail",
              hintText: "admin@gmail.com",
              hintStyle: TextStyle(color: colors.thirdColor),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: colors.thirdColor, width: 3.0),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.vpn_key,
                color: colors.thirdColor,
              ),
              hintText: "123456",
              hintStyle: TextStyle(color: colors.thirdColor),
              labelText: "Senha",
              labelStyle: TextStyle(
                  color: colors.thirdColor, fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
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
