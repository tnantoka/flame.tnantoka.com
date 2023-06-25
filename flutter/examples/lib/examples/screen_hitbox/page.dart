import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ScreenHitboxPage extends StatelessWidget {
  ScreenHitboxPage({super.key});

  final game = ScreenHitboxGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
