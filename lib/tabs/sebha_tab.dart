import 'dart:math' as math;

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 1;

  double angle = 0;

  List<String> phrases = ['سبحان الله', 'الحمد لله', 'الله أكبر'];

  @override
  Widget build(BuildContext context) {
    String currentPhrase = phrases[(counter ) % phrases.length];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
            style: TextTheme.of(context).titleLarge!.copyWith(fontSize: 36),
          ),
          SizedBox(height: 20),
          Image.asset("assets/imeges/sebha_hed.png"),
          Stack(
            children: [
              GestureDetector(
                  onTap: incrementCounter,

                  child: Transform.rotate(
                      angle: angle,
                      child: Image.asset("assets/imeges/sebhabody1.png"))),
              Container(
                padding: EdgeInsetsGeometry.only(left: 120,top: 100),
                child: Column(
                  children: [
                    Text(
                      currentPhrase,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '$counter',
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      counter++;
      angle += math.pi / 6; // زاوية دوران بسيطة (30 درجة)
    });
  }
}

