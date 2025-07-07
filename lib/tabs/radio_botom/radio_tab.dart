import 'package:flutter/material.dart';
import 'package:islame_app/brobertes/theme_color.dart';

import 'TabButton.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabButton(label: 'Radio', selected: true),
                    TabButton(label: 'Reciters', selected: false),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  decoration: BoxDecoration(
                    color: ThemeColor.primary.withAlpha(200),

                    image: DecorationImage(
                      image: AssetImage("assets/imeges/maskgroup.png"),
                      fit: BoxFit.fill,
                    ),

                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Radio Ibrahim Al-Akdar",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 20,),
                      Row(
mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/imeges/pause.png"),
                            color: ThemeColor.Black,
                          ),
                          SizedBox(width: 20,),

                          ImageIcon(
                            AssetImage("assets/imeges/hiconboldvolumecross.png"),
                            color: ThemeColor.Black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  decoration: BoxDecoration(
                    color: ThemeColor.primary.withAlpha(200),

                    image: DecorationImage(
                      image: AssetImage("assets/imeges/maskgroup.png"),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Radio Ibrahim Al-Akdar",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/imeges/pause.png"),
                            color: ThemeColor.Black,
                          ),
                          SizedBox(width: 20,),

                          ImageIcon(
                            AssetImage("assets/imeges/hiconboldvolumecross.png"),
                            color: ThemeColor.Black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  decoration: BoxDecoration(
                    color: ThemeColor.primary.withAlpha(200),

                    image: DecorationImage(
                      image: AssetImage("assets/imeges/maskgroup.png"),
                      fit: BoxFit.fill,
                    ),

                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Radio Ibrahim Al-Akdar",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/imeges/polygon2.png"),
                            color: ThemeColor.Black,
                          ),
                          SizedBox(width: 20,),

                          ImageIcon(
                            AssetImage("assets/imeges/hiconboldvolumehigh.png"),
                            color: ThemeColor.Black,
                          ),
                        ],
                      ),                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  decoration: BoxDecoration(
                    color: ThemeColor.primary.withAlpha(200),

                    image: DecorationImage(
                      image: AssetImage("assets/imeges/maskgroup.png"),
                      fit: BoxFit.fill,
                    ),

                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Radio Ibrahim Al-Akdar",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/imeges/polygon2.png"),
                            color: ThemeColor.Black,
                          ),
                          SizedBox(width: 20,),

                          ImageIcon(
                            AssetImage("assets/imeges/hiconboldvolumehigh.png"),
                            color: ThemeColor.Black,
                          ),
                        ],
                      ),                    ],
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
