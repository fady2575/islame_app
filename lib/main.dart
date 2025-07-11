import 'package:flutter/material.dart';
import 'package:islame_app/screns/home_screen.dart';
import 'package:islame_app/screns/splash_screen.dart';
import 'package:islame_app/tabs/QuranTab/quran_seves.dart';
import 'package:islame_app/tabs/QuranTab/sura_detels_screen.dart';
import 'package:islame_app/tabs/hadeith_tab/hadeth_detals.dart';

 Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await  QuranSeves.gitmostRecentlesura();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
routes: {
  HomeScreen.routeName:(_)=>HomeScreen(),
  SplashScreen.routeName:(_)=>SplashScreen(),
  SuraDetelsScreen.routeName:(_)=>SuraDetelsScreen(),
  HadethDetals.routeName:(_)=>HadethDetals(),
},
      initialRoute:   SplashScreen.routeName,


      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
    );
  }
}

