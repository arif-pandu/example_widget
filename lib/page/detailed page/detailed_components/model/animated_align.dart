import 'package:flutter/material.dart';

class AnimatedAlignModel extends StatelessWidget {
  const AnimatedAlignModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        ),
      ),
    );
  }
}
