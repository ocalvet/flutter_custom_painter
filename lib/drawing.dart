import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Drawing extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
    ..strokeWidth = 2.0
    ..style = PaintingStyle.stroke
    ..color = Colors.green;
    Rect area = Rect.fromLTWH(-2, -2, size.width + 2, size.height + 2);
    canvas.drawRect(area, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}