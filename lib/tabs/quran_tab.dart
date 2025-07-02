import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  static const String routeName = "QuranTab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
          "assets/imeges/Group 38.png",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
