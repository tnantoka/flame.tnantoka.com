import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class SoundPage extends StatelessWidget {
  SoundPage({super.key});

  final game = SoundGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
