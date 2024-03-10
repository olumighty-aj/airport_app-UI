import 'package:airport_app/constant.dart';
import 'package:flutter/material.dart';

class DottedLineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DottedLinePainter(),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = kSmallTextKcolor
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    final double dashWidth = 5;
    final double dashSpace = 5;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}