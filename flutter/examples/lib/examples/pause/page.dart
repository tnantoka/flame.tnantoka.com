import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class PausePage extends StatelessWidget {
  PausePage({super.key});

  final game = PauseGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
