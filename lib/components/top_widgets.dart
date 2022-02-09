import 'package:flutter/material.dart';

import 'logo_widget.dart';

class TopWidget extends StatelessWidget {
  final double width;
  final double height;

  const TopWidget({Key? key, this.width = 259, this.height = 191})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            Text(
              "Pizzaria \n  do Carlos",
              style: TextStyle(
                fontSize: constraints.maxWidth * 0.07,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'HotPizza',
                shadows: const [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    offset: Offset(3, 3),
                  )
                ],
              ),
            ),
            LogoWidget(
              size: constraints.maxWidth * 0.5,
            )
          ],
        );
      }),
    );
  }
}
