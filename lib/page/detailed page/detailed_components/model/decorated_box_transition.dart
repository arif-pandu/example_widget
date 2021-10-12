import 'package:flutter/material.dart';

class DecoratedBoxTransitionModel extends StatefulWidget {
  const DecoratedBoxTransitionModel({Key? key}) : super(key: key);

  @override
  _DecoratedBoxTransitionModelState createState() =>
      _DecoratedBoxTransitionModelState();
}

class _DecoratedBoxTransitionModelState
    extends State<DecoratedBoxTransitionModel> with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60.0),
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        )
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
      // No shadow.
    ),
  );

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBoxTransition(
        position: DecorationPosition.background,
        decoration: decorationTween.animate(_controller),
        child: Container(
          width: 150,
          height: 150,
          padding: const EdgeInsets.all(10),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
