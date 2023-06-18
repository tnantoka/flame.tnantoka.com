import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class ArcGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      CustomPainterComponent(
        position: Vector2(8, 8),
        painter: MyPainter(),
      ),
    );
  }
}

// <arc>
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final strokePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawArc(
      const Rect.fromLTWH(
        0,
        0,
        100,
        100,
      ),
      radians(0),
      radians(90),
      false,
      strokePaint,
    );

    canvas.drawArc(
      const Rect.fromLTWH(
        100,
        0,
        100,
        100,
      ),
      radians(0),
      radians(90),
      true,
      strokePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
// </arc>
