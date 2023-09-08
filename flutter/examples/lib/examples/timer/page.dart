import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class TimerPage extends StatelessWidget {
  TimerPage({super.key});

  final game = TimerGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
