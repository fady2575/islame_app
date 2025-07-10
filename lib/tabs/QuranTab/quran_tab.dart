import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islame_app/brobertes/theme_color.dart';
import 'package:islame_app/tabs/QuranTab/quran_seves.dart';
import 'package:islame_app/tabs/QuranTab/sura.dart';
import 'package:islame_app/tabs/QuranTab/sura_detels_screen.dart';
import 'package:islame_app/tabs/QuranTab/suras_item_tab.dart';

import 'most_recentle_secshoin.dart';

class QuranTab extends StatefulWidget {
  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    double screenwith = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              fillColor:Colors.black.withValues(alpha: 0.7) ,
              filled: true,
              helperStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),


              hintText: "sura Name",

              border: OutlineInputBorder(
                borderSide: BorderSide(color: ThemeColor.primary, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ThemeColor.primary, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: SvgPicture.asset(
                "assets/svg/quran.svg",
                colorFilter: ColorFilter.mode(
                  ThemeColor.primary,
                  BlendMode.srcIn,
                ),
                height: 28,
                width: 28,
                fit: BoxFit.scaleDown,
              ),
            ),
            onChanged: (quary) {
       QuranSeves.sershsuraname(quary);
       setState(() {});
            },//سيرش الايات
          ),
        ),
         MostRecentleSecshoin(),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "Suras List",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: ThemeColor.wihate,
              endIndent: screenwith * 0.1,
              indent: screenwith * 0.1,
            ),

            itemBuilder: (_, index) {
              Sura sura = QuranSeves.sura[index];
              return InkWell(
                onTap: () async{
                  QuranSeves.addsuramostresntle(sura);
               await   Navigator.of(
                    context,
                  ).pushNamed(SuraDetelsScreen.routeName, arguments: sura);
                  setState(() {});

                },
                child: SurasItemTab(sura),
              );
            },
            itemCount: QuranSeves.engsuraName.length,
          ),
        ),
      ],
    );
  }
}
