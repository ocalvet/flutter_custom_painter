import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/happy_face/drawing.dart';

class HappyFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      // size: Size(200, 200),
      foregroundPainter: Drawing(),
      child: Container(
        // child: Text('Home'),
        width: 200,
        height: 100,
        // color: Colors.amber,
      ),
    );
  }
}
