import 'package:flutter/material.dart';
import 'package:islame_app/tabs/QuranTab/quran_seves.dart';
import 'package:islame_app/tabs/QuranTab/sura.dart';

import 'most_recentle_item.dart';

class MostRecentleSecshoin extends StatelessWidget {
  const MostRecentleSecshoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: QuranSeves.mostRecentle.isNotEmpty ,
      child: Padding(
        padding: EdgeInsetsGeometry.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("most recentle", style: Theme
                .of(context)
                .textTheme
                .titleMedium),
            SizedBox(height: 10),
            SizedBox(
              height: MediaQuery
                  .sizeOf(context)
                  .height * 0.17,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) =>
                      MostRecentleItem(
                        QuranSeves.mostRecentle.reversed.toList()[index],
                      ),
                  separatorBuilder: (_, __) => SizedBox(width: 10),
                  itemCount: QuranSeves.mostRecentle.length
                  ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
