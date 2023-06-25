import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class ParticlePage extends StatelessWidget {
  ParticlePage({super.key});

  final game = ParticleGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
