import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class AnimationTickerPage extends StatelessWidget {
  AnimationTickerPage({super.key});

  final game = AnimationTickerGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
