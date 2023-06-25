import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class PriorityPage extends StatelessWidget {
  PriorityPage({super.key});

  final game = PriorityGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
