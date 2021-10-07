// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({Key? key}) : super(key: key);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments.toString()),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Ganti pake widget masing"
          Container(
            margin: EdgeInsets.only(
              top: 75,
              bottom: 25,
            ),
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          // Ganti deskripsi sesuai widget
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Animated Container is for build an animated based on rect shape\n There are some parameters",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
