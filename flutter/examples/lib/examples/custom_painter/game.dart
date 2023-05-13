import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class CustomPainterGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    // <custom_painter2>
    await add(
      CustomPainterComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        painter: MyPainter(),
      ),
    );
    // </custom_painter2>
  }
}

// <custom_painter1>
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final strokePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRect(
      const Rect.fromLTWH(-50, -50, 100, 100),
      strokePaint,
    );
    canvas.drawLine(
      const Offset(-50, -50),
      const Offset(50, 50),
      strokePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
// </custom_painter1>
