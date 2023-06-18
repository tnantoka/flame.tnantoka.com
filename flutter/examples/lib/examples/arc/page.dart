import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ArcPage extends StatelessWidget {
  ArcPage({super.key});

  final game = ArcGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
