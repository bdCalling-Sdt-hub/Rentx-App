import 'package:flutter/material.dart';

enum LineOrientation { vertical, horizontal }

class DottedLinePainter extends CustomPainter {
  final LineOrientation orientation;
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpace;

  DottedLinePainter({
    this.orientation = LineOrientation.vertical,
    this.color = Colors.black,
    this.strokeWidth = 2,
    this.dashLength = 5,
    this.dashSpace = 3,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double start = 0;
    double end = orientation == LineOrientation.vertical ? size.height : size.width;

    while (start < end) {
      if (orientation == LineOrientation.vertical) {
        canvas.drawLine(Offset(0, start), Offset(0, start + dashLength), paint);
      } else {
        canvas.drawLine(Offset(start, 0), Offset(start + dashLength, 0), paint);
      }
      start += dashLength + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
