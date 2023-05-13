import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class TextBoxPage extends StatelessWidget {
  TextBoxPage({super.key});

  final game = TextBoxGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
