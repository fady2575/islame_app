import 'package:flutter/material.dart';
import 'package:islame_app/brobertes/theme_color.dart';
import 'package:islame_app/tabs/QuranTab/sura.dart';
import 'package:islame_app/tabs/QuranTab/sura_detels_screen.dart';

class MostRecentleItem extends StatelessWidget {
  Sura sura;

  MostRecentleItem(this.sura);

  @override
  Widget build(BuildContext context) {
    Size screenheight = MediaQuery.sizeOf(context);
    TextTheme texttheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetelsScreen.routeName,arguments: sura);
      },
      child: Container(
        height: double.infinity,
        width: screenheight.width * 0.7,
        padding: EdgeInsets.only(left: 12, top: 12, bottom: 12,right: 8),
        decoration: BoxDecoration(
          color: ThemeColor.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sura.engsuraName,
                  style: texttheme.headlineSmall!.copyWith(
                    color: ThemeColor.Black,
                  ),
                ),
                Text(
                  sura.arabicsuraName,
                  style: texttheme.titleMedium!.copyWith(color: ThemeColor.Black),
                ),
                Text(
                  "${sura.AyaNumber}",
                  style: texttheme.titleMedium!.copyWith(color: ThemeColor.Black),
                ),
              ],
            ),
            Image.asset(
              "assets/imeges/most_recentle.png",
              height: screenheight.height * 0.13,
              width: screenheight.width * 0.3,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
