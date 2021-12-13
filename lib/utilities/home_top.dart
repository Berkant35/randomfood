
import 'package:flutter/material.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';


class CirclePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = CustomColor.forestGreen;
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, size.height/1.5);
    path.quadraticBezierTo(
        size.width / 2, size.height*1, size.width, size.height/1.5);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class SecondCirclePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = CustomColor.lint.withOpacity(0.6);
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, size.height/1.25);
    path.quadraticBezierTo(
        size.width / 2, size.height*1.10, size.width, size.height/1.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
