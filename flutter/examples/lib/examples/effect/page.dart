import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class EffectPage extends StatelessWidget {
  EffectPage({super.key});

  final game = EffectGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
