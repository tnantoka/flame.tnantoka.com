import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class DebugPage extends StatelessWidget {
  DebugPage({super.key});

  final game = DebugGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
