import 'package:flutter/material.dart';

import '../components/background.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          BackGround(
            width: size.width,
            height: size.height,
          ),
        ],
      ),
    );
  }
}
