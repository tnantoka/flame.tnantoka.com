import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class TimeScalePage extends StatelessWidget {
  TimeScalePage({super.key});

  final game = TimeScaleGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
