import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/happy_face/drawing.dart';

class HappyFace extends StatelessWidget {
  final double size;
  final Color fillColor;
  final Color strokeColor;

  const HappyFace({Key key, this.size, this.fillColor, this.strokeColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: Drawing(
        fillColor: fillColor,
        strokeColor: strokeColor,
      ),
      child: Container(
        width: size,
        height: size,
      ),
    );
  }
}
