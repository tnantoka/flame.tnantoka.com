import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class BackgroundPage extends StatelessWidget {
  BackgroundPage({super.key});

  final game = BackgroundGame();

  // <background1>
  @override
  Widget build(BuildContext context) {
    return GameWidget<BackgroundGame>(
      game: game,
      backgroundBuilder: (context) => const Center(
        child: Text(
          'background',
          style: const TextStyle(
            color: Colors.red,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
  // </background1>
}
