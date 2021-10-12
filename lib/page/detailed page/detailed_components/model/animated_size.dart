// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedSizeModel extends StatefulWidget {
  const AnimatedSizeModel({Key? key}) : super(key: key);

  @override
  _AnimatedSizeModelState createState() => _AnimatedSizeModelState();
}

class _AnimatedSizeModelState extends State<AnimatedSizeModel> {
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
        child: AnimatedSize(
          duration: Duration(seconds: 1),
          child: FlutterLogo(
            size: selected ? 50 : 100,
          ),
        ),
      ),
    );
  }
}
