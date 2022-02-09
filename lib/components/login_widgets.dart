import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/pages/signin_page.dart';
import 'package:flutter_application_1/pages/signup_page.dart';

import '../decorations/mytextstyles.dart';
import '../pages/home_page.dart';
import 'mytextformfield_widget.dart';

enum Pages { signIn, signUp }

class LoginWidgets extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String info;
  final String action;
  final Pages page;

  const LoginWidgets({
    Key? key,
    this.width = 210,
    this.height = 350,
    required this.title,
    required this.info,
    required this.action,
    this.page = Pages.signIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyTextStyles myTextStyles = MyTextStyles();
    ColorsApp color = ColorsApp();
    late Widget child;

    switch (page) {
      case Pages.signUp:
        child = LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.06,
              ),
              Text(
                title,
                style: myTextStyles.myStyle,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.04,
              ),
              const MyTextFormField(
                myDecoration: Dec.name,
                keyBoardInputType: TextInputType.name,
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()));
                        },
                        child: Text(action, style: myTextStyles.myStyle3),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
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
        });
        break;
      case Pages.signIn:
        child = LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.08,
              ),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: Text(action, style: myTextStyles.myStyle3),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
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
        });
        break;
      default:
    }

    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
