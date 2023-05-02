import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ButtonPage extends StatelessWidget {
  ButtonPage({super.key});

  final game = ButtonGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
