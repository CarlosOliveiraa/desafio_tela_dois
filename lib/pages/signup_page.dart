import 'package:flutter/material.dart';

import '../components/background.dart';
import '../components/botton_background.dart';
import '../components/login_widgets.dart';
import '../components/top_widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackGround(
        width: size.width,
        height: size.height,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.07,
                  top: constraints.maxHeight * 0.06,
                ),
                child: TopWidget(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.34,
                ),
              ),
              BottonBackGround(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.6,
                child: LoginWidgets(
                  page: Pages.signUp,
                  title: "Registrar",
                  info: "Registro",
                  action: "Entrar",
                  width: constraints.maxWidth * 0.81,
                  height: constraints.maxHeight * 0.72,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
