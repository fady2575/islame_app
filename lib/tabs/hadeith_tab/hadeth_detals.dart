import 'dart:core';

import 'package:flutter/material.dart';
import 'package:islame_app/brobertes/theme_color.dart';
import 'package:islame_app/tabs/QuranTab/quran_seves.dart';
import 'package:islame_app/tabs/QuranTab/sura.dart';
import 'package:islame_app/tabs/hadeith_tab/hadeth_class.dart';


class HadethDetals extends StatelessWidget {
  static const String routeName = "/HadethDetals";

  late Sura sura;

  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    double screenhied = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(title: Text("hadeth${hadeth.num}")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/imeges/detels_heder _lift.png",
                  height: screenhied * 0.1,
                  fit: BoxFit.fill,
                ),
                Text(
                  "${hadeth.titel}",
                  style: textTheme.headlineSmall!.copyWith(
                    color: ThemeColor.primary,
                  ),
                ),
                Image.asset(
                  "assets/imeges/detels_heder rieut.png",
                  height: screenhied * 0.1,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Expanded(
            child:
                 ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (_, index) => Text(
                hadeth.content[index],
                style: textTheme.titleLarge!.copyWith(
                  color: ThemeColor.primary,
                ),
                textAlign: TextAlign.center,
              ),
              separatorBuilder: (_, __) => SizedBox(height: 12),
              itemCount: hadeth.content.length,
            ),
          ),

          Image.asset("assets/imeges/maskgroup.png", width: double.infinity),
        ],
      ),
    );
  }
}
