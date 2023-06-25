import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class HelloPage extends StatelessWidget {
  HelloPage({super.key});

  final game = HelloGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
