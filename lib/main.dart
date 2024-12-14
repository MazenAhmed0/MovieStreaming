import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/CategoryPage.dart';
import 'pages/HomePage.dart';
import 'pages/MoviePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   // to hide status bar and below buttons
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //   super.initState();

  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF0F111D)),
        routes: {
          "/": (context) => HomePage(),
          "categoryPage": (context) => CategoryPage(),
          "moviePage": (context) => MoviePage(),
        });
  }
}
