// ignore_for_file: prefer_const_constructors

import 'package:example_widget/controller/main_controller.dart';
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
    MainController mainController = Get.put(MainController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // WIDGET NAME
          Get.arguments[0],
        ),
        centerTitle: true,
      ),
      body: Center(
          child: ListView(
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
            height: Get.arguments[3]['properties'].length.toDouble() * 40,
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),

            // DESKRIPSI WIDGET
            child: ListView.builder(
              itemCount: Get.arguments[3].length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: RichText(
                    text: TextSpan(
                      text: Get.arguments[3]['properties'][index] + '\t',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: Get.arguments[3]['type'][index],
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.lightBlue[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
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
