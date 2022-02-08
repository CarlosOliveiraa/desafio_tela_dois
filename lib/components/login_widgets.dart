import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

import '../decorations/mytextstyles.dart';
import 'mytextformfield_widget.dart';

class LoginWidgets extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String info;
  final String action;

  const LoginWidgets({
    Key? key,
    this.width = 210,
    this.height = 262,
    required this.title,
    required this.info,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyTextStyles myTextStyles = MyTextStyles();
    ColorsApp color = ColorsApp();

    return SizedBox(
      width: width,
      height: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: myTextStyles.myStyle,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
            ),
            const MyTextFormField(
              keyBoardInputType: TextInputType.emailAddress,
              myDecoration: Dec.email,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.04,
            ),
            const MyTextFormField(
              keyBoardInputType: TextInputType.visiblePassword,
              obscureText: true,
              myDecoration: Dec.pass,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(info, style: myTextStyles.myStyle2),
                    SizedBox(
                      height: constraints.maxHeight * 0.08,
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        print("toquei");
                      },
                      child: Text(action, style: myTextStyles.myStyle3),
                    ),
                  ],
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: color.thirdColor,
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        );
      }),
    );
  }
}
