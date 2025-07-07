import 'package:flutter/material.dart';
import 'package:islame_app/brobertes/theme_color.dart';
import 'package:islame_app/screns/navbar_an_slected.dart';
import 'package:islame_app/screns/navbar_slected.dart';
import 'package:islame_app/tabs/hadeith_tab.dart';
import 'package:islame_app/tabs/QuranTab/quran_tab.dart';
import 'package:islame_app/tabs/radio_botom/radio_tab.dart';
import 'package:islame_app/tabs/sebha_tab.dart';
import 'package:islame_app/tabs/taiem_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadeithTab(),
    SebhaTab(),
    RadioTab(),
    TaiemTab(),
  ];
  List<String> backgrawndTabs = [
    "suranamebakgriwnd",
    "hagethtabbakgrwend",
    "sebhatabbakgrwend",
    "radio_backgrawn",
    "time_backgrawn",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/imeges/${backgrawndTabs[currentIndex]}.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                "assets/imeges/hid.png",
                height: MediaQuery.sizeOf(context).height*0.15,
              ),
              Expanded(child: tabs[currentIndex]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: ThemeColor.primary,

            icon: NavbarAnSlected(imegeName: "quran"),

            activeIcon: NavbarSlected(imegeName: "quran"),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: NavbarAnSlected(imegeName: "hadeith"),
            activeIcon: NavbarSlected(imegeName: "hadeith"),
            label: "Hadeith",
          ),
          BottomNavigationBarItem(
            icon: NavbarAnSlected(imegeName: "sebha"),
            activeIcon: NavbarSlected(imegeName: "sebha"),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: NavbarAnSlected(imegeName: "radio"),
            activeIcon: NavbarSlected(imegeName: "radio"),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: NavbarAnSlected(imegeName: "taiem"),
            activeIcon: NavbarSlected(imegeName: "taiem"),
            label: "Taiem",
          ),
        ],
      ),
    );
  }
}
