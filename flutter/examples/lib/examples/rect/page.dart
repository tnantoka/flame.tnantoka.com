import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class RectPage extends StatelessWidget {
  RectPage({super.key});

  final game = RectGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
