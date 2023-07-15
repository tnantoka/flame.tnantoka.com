import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class RipplePage extends StatelessWidget {
  RipplePage({super.key});

  final game = RippleGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
