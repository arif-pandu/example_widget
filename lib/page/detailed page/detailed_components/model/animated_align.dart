import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedAlignModel extends StatefulWidget {
  const AnimatedAlignModel({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignModel> createState() => _AnimatedAlignModelState();
}

class _AnimatedAlignModelState extends State<AnimatedAlignModel> {
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
        child: Container(
          color: Colors.transparent,
          height: 200,
          width: 300,
          child: AnimatedAlign(
            alignment: selected ? Alignment(-1, -1) : Alignment(1, 1),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 75.0),
          ),
        ),
      ),
    );
  }
}
