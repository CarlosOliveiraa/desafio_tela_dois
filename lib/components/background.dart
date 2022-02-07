import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'top_widgets.dart';

class BackGround extends StatelessWidget {
  final double width;
  final double height;

  const BackGround({Key? key, this.width = 259, this.height = 558})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorsApp colors = ColorsApp();

    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: colors.bkDecoration,
      child: LayoutBuilder(builder: (context, constraints) {
        return TopWidget(
          width: constraints.maxWidth,
        );
      }),
    );
  }
}
