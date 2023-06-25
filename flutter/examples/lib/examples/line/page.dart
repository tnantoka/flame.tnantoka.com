import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class LinePage extends StatelessWidget {
  LinePage({super.key});

  final game = LineGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
