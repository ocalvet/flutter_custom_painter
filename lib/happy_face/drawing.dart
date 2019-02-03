import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Drawing extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width/2;
    double centerY = size.height/2;
    double length = size.shortestSide;
    double faceRadius = length/2;
    double eyeDistanceFromCenter = length/4.5;
    double leftEyeCenterX = centerX - eyeDistanceFromCenter;
    double rightEyeCenterX = centerX + eyeDistanceFromCenter;
    double eyeCenterY = centerY - length/6;
    double eyeRadius = length/8;
    Paint facePaint = Paint()
    ..strokeWidth = 4.0
    ..style = PaintingStyle.fill
    ..color = Colors.green;
    Paint grayStroke = Paint()
    ..strokeWidth = 2.0
    ..style = PaintingStyle.stroke
    ..color = Colors.black38;
    Rect mouthArea = Rect.fromCircle(center: Offset(centerX, centerY), radius: faceRadius - faceRadius / 4);
    canvas.drawCircle(Offset(centerX, centerY), faceRadius, facePaint);
    canvas.drawCircle(Offset(leftEyeCenterX, eyeCenterY), eyeRadius, grayStroke);
    canvas.drawCircle(Offset(rightEyeCenterX, eyeCenterY), eyeRadius, grayStroke);
    canvas.drawArc(mouthArea, 0.5, 2, false, grayStroke);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}