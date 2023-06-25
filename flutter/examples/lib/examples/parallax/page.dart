import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ParallaxPage extends StatelessWidget {
  ParallaxPage({super.key});

  final game = ParallaxGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
