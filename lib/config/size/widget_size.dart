import 'package:flutter/cupertino.dart';

class WidgetSize {
  // 가로 비율
  static double ratioOfHorizontal(BuildContext context, double i) {
    return MediaQuery.of(context).size.width * i;
  }

  // 세로 비율
  static double ratioOfVertical(BuildContext context, double i) {
    return MediaQuery.of(context).size.height * i;
  }
}