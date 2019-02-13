import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/custom/custom_drawing.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CustomDrawing(),
      child: Container(
        width: 200,
        height: 200,
      ),
    );
  }
}
