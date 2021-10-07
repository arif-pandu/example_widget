import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_align.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  int? mainIndex;
  List widgetsName = [
    "Animated Align",
    "Animated Builder",
    "Animated Container",
    "Animated Cross Fade",
    "Animated Default Text Style",
    "Animated Opacity",
    "Animated Positioned",
    "Animated Size",
    "Animated Widget",
    "Decorated Box Transition",
    "Fade Transition",
    "Hero",
    "Positioned Trasition",
    "Rotation Transition",
    "Scale Transition",
    "Size Transition",
    "Slide Transition",
  ];

  List widgetModel = [
    AnimatedAlignModel(),
  ];

  List widgetDescription = [
    "ANimated Align AdalahANimated Align ANimated Align AdalahANimated Align AdalahAdalah AdalahANimated Align AdalahAdalah AdalahANimated Align AdalahAdalah"
  ];

  List widgetParameter = [
    "\u2022 Parameter Tiap Widget\n\u2022 Ini juga Parameter",
  ];

  List widgetSourceCode = [
    "AnimatedContainer Source code",
  ];
}
