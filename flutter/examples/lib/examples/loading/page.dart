import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class LoadingPage extends StatelessWidget {
  LoadingPage({super.key});

  final game = LoadingGame();

  // <loading1>
  @override
  Widget build(BuildContext context) {
    return GameWidget<LoadingGame>(
      game: game,
      loadingBuilder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  // </loading1>
}
