import 'package:flutter/material.dart';

class SampleCustomPaint extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleCustomPaint();
}

class _SampleCustomPaint extends State<SampleCustomPaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomPaint(
        // painter: ,
      ),
    );
  }
}
// CustomPainterについては今度勉強します・
// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawLine(p1, p2, paint)
//     }
  
//     @override
//     bool shouldRepaint(CustomPainter old) {
//       return old.myParameter != my
//   }
  
// }