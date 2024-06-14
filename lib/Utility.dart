

import 'package:flutter/material.dart';

class Responsive {
  static width(double p, BuildContext context) {
    return MediaQuery.of(context).size.width * (p / 100);
  }

  static height(double p, BuildContext context) {
    return MediaQuery.of(context).size.height * (p / 100);
  }
}


class AppColors {

  static  Color lightTextColor = Color(0xFFB7F3FF);
  static  Color white = Colors.white;
  static  Color blackTextColor = Color(0xFF102C2F);
  static  Color borderGrey = Color(0xFFD8DADC);
  static  Color themeMainColor = Color(0xFF11E3BF);
  static  Color themeYellowColor = Color(0xFFFFCF40);
  static  Color appbarBG = Color(0xFF102C2F);
  static  Color backgroundColor = Color(0xFF49A6A8);


}