import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class SpritePage extends StatelessWidget {
  SpritePage({super.key});

  final game = SpriteGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
