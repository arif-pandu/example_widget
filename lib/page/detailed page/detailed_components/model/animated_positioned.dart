// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedPositionedModel extends StatefulWidget {
  const AnimatedPositionedModel({Key? key}) : super(key: key);

  @override
  _AnimatedPositionedModelState createState() =>
      _AnimatedPositionedModelState();
}

class _AnimatedPositionedModelState extends State<AnimatedPositionedModel> {
  bool selected = false;
  void changed() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          left: selected ? 60 : 240,
          top: selected ? 50 : 100,
          child: GestureDetector(
            onTap: () {
              changed();
            },
            child: FlutterLogo(size: 40),
          ),
          height: 50,
          width: 50,
          duration: Duration(seconds: 1),
        ),
      ],
    );
  }
}
