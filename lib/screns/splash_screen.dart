import 'package:flutter/material.dart';
import 'package:islame_app/screns/home_screen.dart';

import '../brobertes/theme_color.dart';


class SplashScreen extends StatelessWidget {
  static const String routeName="splash";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: ThemeColor.Black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          SizedBox(height: 20),

          Center(
            child: Image.asset(
              'assets/imeges/splash up.png',
              height: 400,
            ),
          ),
          Spacer(),
          Image.asset('assets/imeges/splash dawn.png', height: 200),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
