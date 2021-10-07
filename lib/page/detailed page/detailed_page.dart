// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
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
        title: Text(
          // WIDGET NAME
          Get.arguments[0],
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 35, bottom: 10),
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            // MODEL BUAT WIDGET
            child: Get.arguments[1],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            // DESKRIPSI WIDGET
            child: Text(
              Get.arguments[2],
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            // DESKRIPSI WIDGET
            child: Text(
              Get.arguments[3],
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            color: Color(0xffeeeeee),
            child: Center(
              child: Text(Get.arguments[4]),
            ),
          ),
        ],
      )),
    );
  }
}
