import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class AnimationPage extends StatelessWidget {
  AnimationPage({super.key});

  final game = AnimationGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
