import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../decorations/textFormField_decoration.dart';
import 'botton_background.dart';
import 'login_widgets.dart';
import 'top_widgets.dart';

class BackGround extends StatelessWidget {
  final double width;
  final double height;

  const BackGround({Key? key, this.width = 259, this.height = 558})
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
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.06,
                ),
                child: TopWidget(
                  width: constraints.maxWidth,
                ),
              ),
              BottonBackGround(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.66,
                child: LoginWidgets(
                  title: "Registrar",
                  info: "Registrar",
                  action: "Bem Vindo",
                  width: constraints.maxWidth * 0.81,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
