


import 'package:flutter/cupertino.dart';

class CirclePainter extends CustomPainter {
  final Color customColor;

  CirclePainter(this.customColor);

  @override
  void paint(Canvas canvas, Size size) {
    final _paint = Paint()
      ..color = customColor
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      _paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

