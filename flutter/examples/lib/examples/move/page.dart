import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class MovePage extends StatelessWidget {
  MovePage({super.key});

  final game = MoveGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
