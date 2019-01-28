import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Painter',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}