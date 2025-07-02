import 'package:flutter/material.dart';
import 'package:islame_app/screns/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
 home: SplashScreen(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:islame_app/screns/home_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final prefs = await SharedPreferences.getInstance();
//   final isFirstTime = prefs.getBool('intro_seen') ?? false;
//
//   runApp(MyApp(showIntro: !isFirstTime));
// }
//
// class MyApp extends StatelessWidget {
//   final bool showIntro;
//
//   const MyApp({super.key, required this.showIntro});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: showIntro ? IntroScreen() : HomeScreen(),
//     );
//   }
// }
//
