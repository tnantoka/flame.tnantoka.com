import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class PathfindingPage extends StatelessWidget {
  PathfindingPage({super.key});

  final game = PathfindingGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
