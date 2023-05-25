import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class SpriteSheetPage extends StatelessWidget {
  SpriteSheetPage({super.key});

  final game = SpriteSheetGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
