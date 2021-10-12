// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Thumbnail extends StatefulWidget {
  const Thumbnail({
    Key? key,
    required this.colorThumb,
    required this.nameOfWidget,
  }) : super(key: key);
  final Color colorThumb;
  final String nameOfWidget;

  @override
  _ThumbnailState createState() => _ThumbnailState();
}

class _ThumbnailState extends State<Thumbnail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.5),
      padding: EdgeInsets.symmetric(horizontal: 3),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: widget.colorThumb,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          widget.nameOfWidget,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
