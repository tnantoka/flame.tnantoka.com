import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ErrorPage extends StatelessWidget {
  ErrorPage({super.key});

  final game = ErrorGame();

  // <error1>
  @override
  Widget build(BuildContext context) {
    return GameWidget<ErrorGame>(
      game: game,
      loadingBuilder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorBuilder: (context, error) => Center(
        child: Text(
          error.toString(),
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
  // </error1>
}
