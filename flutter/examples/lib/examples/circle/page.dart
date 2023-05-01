import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class CirclePage extends StatelessWidget {
  CirclePage({super.key});

  final game = CircleGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
