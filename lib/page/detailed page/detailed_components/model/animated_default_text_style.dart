// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleModel extends StatefulWidget {
  const AnimatedDefaultTextStyleModel({Key? key}) : super(key: key);

  @override
  _AnimatedDefaultTextStyleModelState createState() =>
      _AnimatedDefaultTextStyleModelState();
}

class _AnimatedDefaultTextStyleModelState
    extends State<AnimatedDefaultTextStyleModel> {
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
        child: AnimatedDefaultTextStyle(
          child: Text("THIS IS AN ANIMATED TEXT"),
          style: TextStyle(
            fontSize: selected == true ? 20 : 30,
            fontWeight: selected == true ? FontWeight.bold : FontWeight.normal,
            color: selected == true ? Colors.white : Colors.black,
          ),
          duration: Duration(seconds: 1),
        ),
      ),
    );
  }
}
