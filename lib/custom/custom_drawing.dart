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
    Path path = Path()
      ..moveTo(30, 10)
      ..lineTo(170, 90)
      ..lineTo(190, 60)
      ..close();
    canvas.drawShadow(path, Colors.black, 5.0, false);
    canvas.drawPath(path, fillColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
