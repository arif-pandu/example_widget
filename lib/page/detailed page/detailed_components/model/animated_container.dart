// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerModel extends StatefulWidget {
  const AnimatedContainerModel({Key? key}) : super(key: key);

  @override
  _AnimatedContainerModelState createState() => _AnimatedContainerModelState();
}

class _AnimatedContainerModelState extends State<AnimatedContainerModel> {
  bool selected = false;
  void changed() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    int min = 50;
    int max = 200;
    var random = Random();
    int range = min + random.nextInt(max - min);

    return Center(
      child: GestureDetector(
        onTap: () {
          changed();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: selected ? range.toDouble() : range.toDouble(),
          height: selected ? range.toDouble() : range.toDouble(),
          color: Colors.blue,
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 50),
        ),
      ),
    );
  }
}
