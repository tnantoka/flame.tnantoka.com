import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class TextPage extends StatelessWidget {
  TextPage({super.key});

  final game = TextGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
