import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/drawing.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Painter'),
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Center(
            child: CustomPaint(
              // size: Size(200, 200),
              foregroundPainter: Drawing(),
              child: Container(
                // child: Text('Home'),
                width: 200,
                height: 100,
                // color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
