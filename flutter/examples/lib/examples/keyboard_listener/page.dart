import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class KeyboardListenerPage extends StatelessWidget {
  KeyboardListenerPage({super.key});

  final game = KeyboardListenerGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
