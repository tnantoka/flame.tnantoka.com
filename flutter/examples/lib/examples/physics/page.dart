import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class PhysicsPage extends StatelessWidget {
  PhysicsPage({super.key});

  final game = PhysicsGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
