import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class GlowPage extends StatelessWidget {
  GlowPage({super.key});

  final game = GlowGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
