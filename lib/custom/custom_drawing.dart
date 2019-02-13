import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomDrawing extends CustomPainter {
  final Paint grayStroke;
  final Paint fillColor;

  CustomDrawing()
      : grayStroke = Paint()
          ..strokeWidth = 2.0
          ..style = PaintingStyle.stroke
          ..color = Colors.black38,
        fillColor = Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.red;

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double length = size.shortestSide;
    canvas.drawLine(Offset(10, 10), Offset(size.width - 10, size.height - 10), grayStroke);
    Path path = Path()
      ..moveTo(30, 10)
      ..lineTo(170, 90)
      ..lineTo(190, 60)
      ..close();
    canvas.drawShadow(path, Colors.black, 2.0, false);
    canvas.drawPath(path, fillColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
