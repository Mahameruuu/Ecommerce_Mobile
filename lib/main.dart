import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/ItemPage.dart';
import 'package:modernlogintute/pages/SplashScreen.dart';
import 'package:modernlogintute/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "homePage": (context) => HomePage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
