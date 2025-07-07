import 'package:flutter/material.dart';
import 'package:islame_app/brobertes/theme_color.dart';
import 'package:islame_app/tabs/QuranTab/quran_seves.dart';
import 'package:islame_app/tabs/QuranTab/sura.dart';

import '../../widgeds/lodeng_indicator.dart';

class SuraDetelsScreen extends StatefulWidget {
  static const String routeName = "/SuraDetelsScreen";

  @override
  State<SuraDetelsScreen> createState() => _SuraDetelsScreenState();
}

class _SuraDetelsScreenState extends State<SuraDetelsScreen> {
  late Sura sura;

  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    sura = ModalRoute.of(context)!.settings.arguments as Sura;
   if(ayat.isEmpty){lodasura();}
    double screenhied = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(title: Text("${sura.engsuraName}")),
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
                  "${sura.arabicsuraName}",
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
            child: ayat.isEmpty
                ? LodengIndicator()
                : ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (_, index) => Text(
                      ayat[index],
                      style: textTheme.titleLarge!.copyWith(
                        color: ThemeColor.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    separatorBuilder: (_, __) => SizedBox(height: 12),
                    itemCount: ayat.length,
                  ),
          ),

          Image.asset("assets/imeges/maskgroup.png", width: double.infinity),
        ],
      ),
    );
  }

  Future<void> lodasura() async {
    String surafilcontent = await QuranSeves.loadefiles(sura.num);
    ayat = surafilcontent.split("\r\n");
    setState(() {});
  }
}
