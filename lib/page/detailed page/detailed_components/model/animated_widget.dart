// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
        child: Center(
          child: Text(
            "This is a widget",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedWidgetModel extends StatefulWidget {
  const AnimatedWidgetModel({Key? key}) : super(key: key);

  @override
  _AnimatedWidgetModelState createState() => _AnimatedWidgetModelState();
}

class _AnimatedWidgetModelState extends State<AnimatedWidgetModel>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SpinningContainer(
      controller: _controller,
    );
  }
}
