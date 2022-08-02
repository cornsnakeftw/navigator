import 'package:flutter/material.dart';
import 'package:navigator/rgb_slider.dart';
import 'package:navigator/shades_page.dart';
import 'package:navigator/shades_with_params.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: 'Flutter Demo',
        home: Homepage(),
        routes: {
          ///new
          './shades': (context) => ShadesWithParams(),
          './rgb': (context) => rgbPage(),
          './index': (context) => Homepage()
        });
  }
}
