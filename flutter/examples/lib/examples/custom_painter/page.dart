import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class CustomPainterPage extends StatelessWidget {
  CustomPainterPage({super.key});

  final game = CustomPainterGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
