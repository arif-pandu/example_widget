import 'package:flutter/material.dart';

class AnimatedAlignModel extends StatefulWidget {
  const AnimatedAlignModel({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignModel> createState() => _AnimatedAlignModelState();
}

class _AnimatedAlignModelState extends State<AnimatedAlignModel> {
  @override
  Widget build(BuildContext context) {
    bool selected = false;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedAlign(
        alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: Center(
          child: FlutterLogo(size: 30),
        ),
      ),
    );
  }
}
