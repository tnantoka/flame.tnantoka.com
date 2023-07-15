import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class KeyboardEventsPage extends StatelessWidget {
  KeyboardEventsPage({super.key});

  final game = KeyboardEventsGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
