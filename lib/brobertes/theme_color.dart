import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeColor {
  static const Color primary=Color(0xffE2BE7F);
  static const Color Black=Color(0xff202020);
  static const Color wihate=Color(0xffFFFFFF);
  static ThemeData darkTheme=ThemeData(
    primaryColor: primary,
bottomNavigationBarTheme:BottomNavigationBarThemeData(
backgroundColor: primary,
  type: BottomNavigationBarType.fixed,
    selectedItemColor:ThemeColor.wihate,
  showUnselectedLabels: false,
),

    );


}