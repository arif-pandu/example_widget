// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedOpacityModel extends StatefulWidget {
  const AnimatedOpacityModel({Key? key}) : super(key: key);

  @override
  _AnimatedOpacityModelState createState() => _AnimatedOpacityModelState();
}

class _AnimatedOpacityModelState extends State<AnimatedOpacityModel> {
  bool selected = false;

  void changed() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        changed();
      },
      child: AnimatedOpacity(
        opacity: selected == true ? 1 : 0.2,
        duration: Duration(seconds: 1),
        child: FlutterLogo(size: 100),
      ),
    ));
  }
}
