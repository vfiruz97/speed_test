import 'dart:ui';

import 'package:flutter/material.dart';

class LineGraphPainter extends CustomPainter {
  final Color color;
  final List<Offset> points;
  LineGraphPainter({
    @required this.points,
    @required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const pointMode = PointMode.polygon;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
    canvas.drawPoints(pointMode, points, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}