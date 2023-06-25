import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class KeyboardPage extends StatelessWidget {
  KeyboardPage({super.key});

  final game = KeyboardGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
