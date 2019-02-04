import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/happy_face/widget.dart';

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
            child: HappyFace(
              size: 100,
              fillColor: Colors.yellow[500],
              strokeColor: Colors.black12,
            ),
          ),
          Positioned(
            top:100,
            left: 50,
            child: HappyFace(
              size: 130,
            ),
          ),
        ],
      ),
    );
  }
}
