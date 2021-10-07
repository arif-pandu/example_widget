// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:example_widget/controller/main_controller.dart';
import 'package:example_widget/page/detailed%20page/detailed_page.dart';
import 'package:example_widget/widget/thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());

    return Scaffold(
      backgroundColor: Colors.blue,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.white.withOpacity(0.8),
            foregroundColor: Colors.white,
            floating: true,
            pinned: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Container(
                color: Colors.amber,
                child: Center(
                  child: Text("INI BANNER"),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                onTap: () {
                  // mainController.mainIndex = index;
                  // print(index);
                  Get.to(
                    DetailedPage(),
                    arguments: [
                      mainController.widgetsName[index],
                      mainController.widgetModel[index],
                      mainController.widgetDescription[index],
                      mainController.widgetParameter[index],
                      mainController.widgetSourceCode[index],
                    ],
                  );
                },
                child: Thumbnail(
                  colorThumb: index % 2 == 0 ? Colors.white : Colors.amber,
                  nameOfWidget: mainController.widgetsName[index],
                ),
              ),
              childCount: mainController.widgetsName.length,
            ),
          ),
        ],
      ),
    );
  }
}
