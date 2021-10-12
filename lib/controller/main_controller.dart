// ignore_for_file: prefer_const_constructors

import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_align.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_builder.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_container.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_cross_fade.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_default_text_style.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_opacity.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_positioned.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_size.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/animated_widget.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/decorated_box_transition.dart';
import 'package:example_widget/page/detailed%20page/detailed_components/model/fade_transition.dart';

import 'package:get/get.dart';

class MainController extends GetxController {
  int? mainIndex;
  List widgetsName = [
    // Animation and Motion
    "Animated Align", //ok
    "Animated Builder", //ok
    "Animated Container", //ok
    "Animated Cross Fade", //ok
    "Animated Default Text Style", //ok
    "Animated Opacity", //ok
    "Animated Positioned", //ok
    "Animated Size", //ok
    "Animated Widget", //ok
    "Decorated Box Transition", //ok
    "Fade Transition", //ok
    "Hero",
    "Positioned Trasition",
    "Rotation Transition",
    "Scale Transition",
    "Size Transition",
    "Slide Transition",
    // Assets, Images, and Icons
    "Icon",
    "Image",
    "Raw Image",
    //Async
    "Future Builder",
    "Stream Builder",
    // Basic Widgets
    "App Bar",
    "Column",
    "Container",
    "Elevated Button",
    "Flutter Logo",
    "Placeholder",
    "Row",
    "Scaffold",
    "Text",
    // Cupertino
  ];

  List widgetModel = [
    AnimatedAlignModel(),
    AnimatedBuilderModel(),
    AnimatedContainerModel(),
    AnimatedCrossFadeModel(),
    AnimatedDefaultTextStyleModel(),
    AnimatedOpacityModel(),
    AnimatedPositionedModel(),
    AnimatedSizeModel(),
    AnimatedWidgetModel(),
    DecoratedBoxTransitionModel(),
    FadeTransitionModel(),
  ];

  List widgetDescription = [
    // AnimatedAlign
    "Animated version of Align which automatically transitions the child's position over a given duration whenever the given alignment changes.",
    // AnimatedBuilder
    "AnimatedBuilder is useful for more complex widgets that wish to include an animation as part of a larger build function. To use AnimatedBuilder, simply construct the widget and pass it a builder function.",
    // AnimatedContainer
    "Animated version of Container that gradually changes its values over a period of time",
    // AnimatedCrossFade
    "A widget that cross-fades between two given children and animates itself between their sizes.",
    // AnimatedDefaultTextStyle
    "Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a given duration whenever the given style changes.",
    //Animatedopacity
    "Animated version of Opacity which automatically transitions the child's opacity over a given duration whenever the given opacity changes.",
    // AnimatedPositioned
    "Animated version of Positioned which automatically transitions the child's position over a given duration whenever the given position changes.\nOnly works if it's a child of stack",
    // AnimatedSize
    "Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.",
    // AnimatedWidget
    "A widget that rebuilds when the given Listenable changes value. Most ccommonly used with Animation objects, which are Listenable, but it can be used with any Listenable, including ChangeNotifier and ValueNotifier.",
    // DecoratedBoxTransition
    "Animated version of a DecoratedBox that animates the different properties of its Decoration.",
    // FadeTransition
    "Animates the opacity of a widget.",
    //
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
        "widthFactor",
      ],
      "type": [
        "AlignmentGeometry",
        "Widget",
        "Curve",
        "Duration",
        "double",
        "VoidCallBack",
        "double",
      ],
    },
    // AnimatedBuilder
    {
      "properties": ["animation", "builder", "child"],
      "type": [
        "Listenable",
        "Widget Function(BuildContext, Widget?)",
        "Widget"
      ],
    },
    // AnimatedContainer
    {
      "properties": [
        "alignment",
        "padding",
        "color",
        "decoration",
        "foregroundDecoration",
        "width",
        "height",
        "constraints",
        "margin",
        "transform",
        "transformAlignment",
        "child",
        "clipBehavior",
        "curve",
        "duration",
        "onEnd"
      ],
      "type": [
        "AlignmentGeometry",
        "EdgeInsetsGeometry",
        "Color",
        "Decoration",
        "Decoration",
        "double",
        "double",
        "BoxConstraints",
        "EdgeInsetsGeometry",
        "Matrix4",
        "AlignmentGeometry",
        "Widget",
        "Clip",
        "Curve",
        "Duration",
        "VoidCallBack"
      ],
    },
    // AnimatedCrossFade
    {
      "properties": [
        "firstChild",
        "secondChild",
        "firstCurve",
        "secondCurve",
        "sizeCurve",
        "alignment",
        "crossFadeState",
        "duration",
        "reverseDuration",
        "layoutBuilder"
      ],
      "type": [
        "Widget",
        "Widget",
        "Curve",
        "Curve",
        "Curve",
        "AlignmentGeometry",
        "CrossFadeState",
        "Duration",
        "Duration",
        "Widget Function(Widget, Key, Widget, Key)"
      ],
    },
    // AnimatedDefaultTextStyle
    {
      "properties": [
        "child",
        "style",
        "textAlign",
        "softWrap",
        "overflow",
        "maxLines",
        "textWidthBasis",
        "textHeightBehavior",
        "curve",
        "duration",
        "onEnd"
      ],
      "type": [
        "Widget",
        "TextStyle",
        "TextAlign",
        "bool",
        "TextOverflow",
        "int",
        "TextWidthBasis",
        "TextHeightBehavior",
        "Curve",
        "Duration",
        "VoidCallBack"
      ],
    },
    // AnimatedOpacity
    {
      "properties": [
        "child",
        "opacity",
        "curve",
        "duration",
        "onEnd",
        "alwaysIncludeSemantics"
      ],
      "type": [
        "Widget",
        "double",
        "Curve",
        "Duration",
        "VoidCallBack",
        "bool",
      ],
    },
    // AnimatedPositioned
    {
      "properties": [
        "child",
        "left",
        "top",
        "right",
        "bottom",
        "width",
        "height",
        "curve",
        "duration",
        "onEnd",
      ],
      "type": [
        "Widget",
        "double",
        "double",
        "double",
        "double",
        "double",
        "double",
        "Curve",
        "Duration",
        "VoidCallBack",
      ],
    },
    //AnimatedSize
    {
      "properties": [
        "child",
        "alignment",
        "curve",
        "duration",
        "reverseDuration",
        "vsync",
        "clipBehavior"
      ],
      "type": [
        "Widget",
        "AlignmentGeometry",
        "Curve",
        "Duration",
        "Duration",
        "TickerProvider",
        "Clip"
      ],
    },
    //Animated Widget
    {
      "properties": [
        "listenable",
      ],
      "type": [
        "Listenable",
      ],
    },
    //Decorated Box Transition
    {
      "properties": [
        "decoration",
        "position",
        "child",
      ],
      "type": [
        "Animation<Decoration>",
        "DecorationPosition",
        "Widget",
      ],
    },
    //Fade Transition
    {
      "properties": [
        "opacity",
        "alwaysIncludeSemantics",
        "child",
      ],
      "type": [
        "Animation<double>",
        "bool",
        "Widget",
      ],
    },
    //
    {
      "properties": ["", ""],
      "type": ["", ""],
    },
    //
    {
      "properties": ["", ""],
      "type": ["", ""],
    },
    //
    {
      "properties": ["", ""],
      "type": ["", ""],
    },
  ];

  List widgetSourceCode = [
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
    "AnimatedContainer Source code",
  ];
}
