import 'package:flutter/material.dart';

class FadeTransitionModel extends StatefulWidget {
  const FadeTransitionModel({Key? key}) : super(key: key);

  @override
  _FadeTransitionModelState createState() => _FadeTransitionModelState();
}

class _FadeTransitionModelState extends State<FadeTransitionModel>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _animation,
        child: Container(
          padding: const EdgeInsets.all(7.5),
          child: const FlutterLogo(
            size: 50,
          ),
        ),
      ),
    );
  }
}
