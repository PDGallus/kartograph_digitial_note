import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TriangleShape extends CustomPainter {
  Paint painter;

  TriangleShape() {
    painter = Paint()
        ..color = Colors.grey
        ..style = PaintingStyle.fill;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();

    canvas.drawPath(path, painter);
  }

}