import 'package:flutter/material.dart';

class BottonBackGround extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const BottonBackGround({
    Key? key,
    this.width = 259,
    this.height = 364,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      child: child,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
        image: DecorationImage(
            image: AssetImage('assets/images/pizza2.png'),
            opacity: 0.25,
            fit: BoxFit.fill),
      ),
    );
  }
}
