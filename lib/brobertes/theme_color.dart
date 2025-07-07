import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeColor {
  static const Color primary=Color(0xffE2BE7F);
  static const Color Black=Color(0xff202020);
  static const Color wihate=Color(0xffFFFFFF);
  static ThemeData darkTheme=ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Black,
      foregroundColor: primary,
      titleTextStyle: TextStyle(
        fontSize:20 ,fontWeight: FontWeight.bold,color: primary
      )
    ),
    scaffoldBackgroundColor: Black,
    primaryColor: primary,
bottomNavigationBarTheme:BottomNavigationBarThemeData(
backgroundColor: primary,
  type: BottomNavigationBarType.fixed,
    selectedItemColor:ThemeColor.wihate,
  showUnselectedLabels: false,
),

    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize:24 ,fontWeight:FontWeight.bold ,color:Colors.white ,
      ),
      titleMedium: TextStyle(
        fontSize:16 ,fontWeight:FontWeight.bold ,color:Colors.white ,
      ),
      titleLarge:
      TextStyle(
        fontSize:20 ,fontWeight:FontWeight.bold ,color:Colors.white ,
      ),
      titleSmall:
      TextStyle(
        fontSize:14 ,fontWeight:FontWeight.bold ,color:Colors.white ,
      ),

    )

    );


}