import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressBoxPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red.withOpacity(0.7);
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width * 0.7, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
