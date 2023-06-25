import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ValueRoutePage extends StatelessWidget {
  ValueRoutePage({super.key});

  final game = ValueRouteGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
