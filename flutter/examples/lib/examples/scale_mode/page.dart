import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ScaleModePage extends StatelessWidget {
  ScaleModePage({super.key});

  final game = ScaleModeGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
