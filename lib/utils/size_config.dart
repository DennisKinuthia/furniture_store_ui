import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQuery;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    screenHeight = _mediaQuery.size.height;
    screenWidth = _mediaQuery.size.width;
    orientation = _mediaQuery.orientation;
    //on iphone 11 the value is almost 10
    //as the device screen varies the default size will re adjust accordingly
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}
