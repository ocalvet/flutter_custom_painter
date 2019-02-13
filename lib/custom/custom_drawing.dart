import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomDrawing extends CustomPainter {
  final Paint grayStroke;

  CustomDrawing()
      : grayStroke = Paint()
          ..strokeWidth = 2.0
          ..style = PaintingStyle.stroke
          ..color = Colors.black38;

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double length = size.shortestSide;
    canvas.drawLine(Offset(10, 10), Offset(size.width - 10, size.height - 10), grayStroke);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
