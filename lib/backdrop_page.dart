import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropPage extends StatefulWidget {
  const BackdropPage({Key? key}) : super(key: key);

  @override
  _BackdropPageState createState() => _BackdropPageState();
}

class _BackdropPageState extends State<BackdropPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BackDrop Filter'),
        ),
        body: Stack(
          children: [
            Image.asset("assets/images/tower-2.jpeg"),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Text('Wecome to Barisal'),
            ),
          ],
        ));
  }
}
