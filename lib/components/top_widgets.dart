import 'package:flutter/material.dart';

import 'logo_widget.dart';

class TopWidget extends StatelessWidget {
  final double width;
  final double height;

  const TopWidget({Key? key, this.width = 259, this.height = 191})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Row(
        children: const [
          Text(
            "Pizzaria \n  do Carlos",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 2.0,
                  offset: Offset(4, 5),
                )
              ],
            ),
          ),
          LogoWidget()
        ],
      ),
    );
  }
}
