
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Utils {

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenSize(BuildContext context) {
    return (screenHeight(context) + screenWidth(context)) / 2;
  }

  static double responsiveDouble({required BuildContext context, required double value}) {
    if (kIsWeb && screenWidth(context) > 450) {
      return screenWidth(context) * 0.001 * value;
    } else {
      return value;
    }
  }

  // widget.screenWidth < 767

  static double responsiveSizeByWidth({required BuildContext context, required double webValue, required double tabValue,  required double tab2Value, required double mobileValue,}) {
    if (screenWidth(context) <= 520) {
      return mobileValue;
    } else if (screenWidth(context) >= 767 && screenWidth(context) <= 1024) {
      return tabValue;
    } else if (screenWidth(context) > 480 && screenWidth(context) < 767){
      return tab2Value;
    }else{
      return webValue;
    }
  }
}