import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/drawing.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Painter'),
      ),
      body: Stack(children: [
        Positioned(
          left: 20,
          top: 20,
          child: CustomPaint(
            foregroundPainter: Drawing(),
            child: Container(
              child: Text('Home'),
              width: 200,
              height: 30,
              color: Colors.amber,
            ),
          ),
        )
      ]),
    );
  }
}
