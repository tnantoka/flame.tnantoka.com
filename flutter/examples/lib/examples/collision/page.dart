import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class CollisionPage extends StatelessWidget {
  CollisionPage({super.key});

  final game = CollisionGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
