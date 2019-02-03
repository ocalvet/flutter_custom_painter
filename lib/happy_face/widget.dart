import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/happy_face/drawing.dart';

class HappyFace extends StatelessWidget {
  final double size;

  const HappyFace({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: Drawing(),
      child: Container(
        width: size,
        height: size,
      ),
    );
  }
}
