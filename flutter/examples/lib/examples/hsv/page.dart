import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class HSVPage extends StatelessWidget {
  HSVPage({super.key});

  final game = HSVGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
