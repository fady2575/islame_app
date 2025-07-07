import 'package:flutter/material.dart';
import 'package:islame_app/tabs/QuranTab/sura.dart';


class SurasItemTab extends StatelessWidget {
  Sura sura;
  SurasItemTab(this.sura);
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Container(
          height: 52,width: 52,
          margin: EdgeInsets.only(right: 24),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imeges/suranumberfrem.png"),
            ),
          ),
          child: Text("${sura.num}",style:textTheme.titleLarge,),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${sura.engsuraName}",style:textTheme.titleLarge,),
            Text("${sura.AyaNumber} Verses",style: textTheme.titleSmall,),
          ],
        ),
        Spacer(),
        Text("${sura.arabicsuraName}",style: textTheme.titleLarge,),
      ],
    );
  }
}
