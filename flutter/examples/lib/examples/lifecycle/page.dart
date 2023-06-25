import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class LifecyclePage extends StatelessWidget {
  LifecyclePage({super.key});

  final game = LifecycleGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
