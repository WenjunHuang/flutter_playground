import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'hand.dart';

class DrawHand extends Hand {
  final double thickness;

  DrawHand(
      {required Color color,
      required this.thickness,
      required double size,
      required angleRadians})
      : super(color: color, size: size, angleRadians: angleRadians);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox.expand(
      child: CustomPaint(
        painter: _HandPainter(
          handSize: size,
          lineWidth: thickness,
          angleRadians: angleRadians,
          color: color,
        ),
      ),
    ));
  }
}

class _HandPainter extends CustomPainter {
  final double handSize;
  final double lineWidth;
  final double angleRadians;
  final Color color;

  _HandPainter({
    required this.handSize,
    required this.lineWidth,
    required this.angleRadians,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = (Offset.zero & size).center;
    final angle = angleRadians - math.pi / 2.0;
    final length = size.shortestSide * 0.5 * handSize;
    final position = center + Offset(math.cos(angle), math.sin(angle)) * length;
    final linePaint = Paint()
      ..color = color
      ..strokeWidth = lineWidth
      ..strokeCap = StrokeCap.square;
    canvas.drawLine(center, position, linePaint);
  }

  @override
  bool shouldRepaint(covariant _HandPainter oldDelegate) {
    return oldDelegate.handSize != handSize ||
        oldDelegate.lineWidth != lineWidth ||
        oldDelegate.angleRadians != angleRadians ||
        oldDelegate.color != color;
  }
}
