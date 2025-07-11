import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/brobertes/theme_color.dart';
import 'package:islame_app/tabs/hadeith_tab/hadeth_detals.dart';

import '../../widgeds/lodeng_indicator.dart';
import 'hadeth_class.dart';

class HadeithItem extends StatefulWidget {
  int index;

  HadeithItem({required this.index});

  @override
  State<HadeithItem> createState() => _HadeithItemState();
}

class _HadeithItemState extends State<HadeithItem> {
  Hadeth? hadeth;

  @override
  Widget build(BuildContext context) {
    if(hadeth==null)
    {  loadhades();}

    TextTheme textTheme = Theme.of(context).textTheme;
    double screenheight = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadethDetals.routeName,arguments: hadeth);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: ThemeColor.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8,left:8,top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/imeges/left_corner.png",
                    height: screenheight * 0.1,
                    fit: BoxFit.fill,
                  ),
                  if (hadeth != null)
                    Expanded(
                      child: Text(
                        hadeth!.titel,
                        style: textTheme.headlineSmall!.copyWith(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign:TextAlign.center ,
                      ),
                    ),
                  Image.asset(
                    "assets/imeges/right_corner.png",

                    height: screenheight * 0.1,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Expanded(
              child:Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/imeges/HadithCardBackGround 1.png",),
                      )
                ),
                child:

              hadeth == null
                  ? LodengIndicator()
                  : ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      itemBuilder: (_, index) => Text(
                        hadeth!.content[index],
                        style: textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      separatorBuilder: (_, __) => SizedBox(height: 4),
                      itemCount: hadeth!.content.length,
                    ),)
            ),
            Image.asset(
              "assets/imeges/Mosque-02 2.png",
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ],

        ),
      ),
    );
  }

  Future<void> loadhades() async {
    String hadethfiled = await rootBundle.loadString(
      "assets/text/Hadeeth/h${widget.index + 1}.txt",
    );
    List<String> hadethlines = hadethfiled.split("\n");
    String titel = hadethlines[0];
    hadethlines.removeAt(0);
    List<String> contanet = hadethlines;
    hadeth = Hadeth(content: contanet, titel: titel,num: widget.index + 1);
    setState(() {});
  }
}
