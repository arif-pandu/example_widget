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
    // AnimatedAlign
    "Animated version of Align which automatically transitions the child's position over a given duration whenever the given alignment changes."
  ];

  List widgetParameter = [
    //AnimatedAlign
    {
      "properties": [
        "alignment",
        "child",
        "curve",
        "duration",
        "heightFactor",
        "onEnd",
        "widthFactor"
      ],
      "type": [
        "AlignmentGeometry",
        "Widget",
        "Curve",
        "Duration",
        "double",
        "VoidCallBack",
        "double"
      ],
    },
    {
      "properties": ["height", "width"],
      "type": ["double", "double"],
    },
    {
      "properties": ["duration", "curve"],
      "type": ["Duration", "Curve"],
    },
  ];

  List widgetSourceCode = [
    "AnimatedContainer Source code",
  ];
}

// RichText(
//               text: TextSpan(
//                 text: Get.arguments[3][mainController.mainIndex]["properties"],
//                 style: TextStyle(
//                   fontSize: 19,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: Get.arguments[3][mainController.mainIndex]["type"],
//                     style: TextStyle(
//                       fontSize: 19,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.lightBlue[600],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
