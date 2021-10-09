// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedCrossFadeModel extends StatefulWidget {
  const AnimatedCrossFadeModel({Key? key}) : super(key: key);

  @override
  _AnimatedCrossFadeModelState createState() => _AnimatedCrossFadeModelState();
}

class _AnimatedCrossFadeModelState extends State<AnimatedCrossFadeModel> {
  bool selected = false;
  void changed() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changed();
      },
      child: Center(
        child: AnimatedCrossFade(
          firstChild: FlutterLogo(
            size: 100,
          ),
          secondChild: Icon(
            Icons.android,
            size: 100,
          ),
          crossFadeState:
              selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 1),
        ),
      ),
    );
  }
}
