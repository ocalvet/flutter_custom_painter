import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Drawing extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint facePaint = Paint()
    ..strokeWidth = 4.0
    ..style = PaintingStyle.fill
    ..color = Colors.green;
    Paint grayStroke = Paint()
    ..strokeWidth = 2.0
    ..style = PaintingStyle.stroke
    ..color = Colors.black38;
    Rect mouthArea = Rect.fromLTWH(20, 20, size.width - 40, size.height - 40);
    canvas.drawCircle(Offset(size.width/2, size.height/2), size.height/2 - 2, facePaint);
    canvas.drawCircle(Offset(size.width/3.5, size.height/3), size.width/8, grayStroke);
    canvas.drawCircle(Offset(size.width - size.width/3.5, size.height/3), size.width/8, grayStroke);
    canvas.drawArc(mouthArea, 0.5, 2, false, grayStroke);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}