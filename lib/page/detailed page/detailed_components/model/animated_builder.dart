import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderModel extends StatefulWidget {
  const AnimatedBuilderModel({Key? key}) : super(key: key);

  @override
  _AnimatedBuilderModelState createState() => _AnimatedBuilderModelState();
}

class _AnimatedBuilderModelState extends State<AnimatedBuilderModel>
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
    return GestureDetector(
      onTap: () {},
      child: AnimatedBuilder(
        animation: _controller,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.green,
          child: const Center(
            child: FlutterLogo(size: 50),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
