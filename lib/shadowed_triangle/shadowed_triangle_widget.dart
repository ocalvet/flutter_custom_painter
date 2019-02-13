import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/shadowed_triangle/shadowed_triangle_drawing.dart';

class ShadowedTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: ShadowedTriangleDrawing(),
      child: Container(
        width: 200,
        height: 200,
      ),
    );
  }
}
