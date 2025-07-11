import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islame_app/tabs/hadeith_tab/hadeith_item.dart';

class HadeithTab extends StatelessWidget {
  static const String routeName = "HadeithTab";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 12,bottom: 20),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: double.infinity,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
        ),
        itemBuilder: (_, index, _) => HadeithItem(index: index,),
        itemCount: 50,

      ),
    );
  }
}
