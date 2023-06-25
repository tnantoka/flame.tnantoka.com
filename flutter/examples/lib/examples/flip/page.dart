import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class FlipPage extends StatelessWidget {
  FlipPage({super.key});

  final game = FlipGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
