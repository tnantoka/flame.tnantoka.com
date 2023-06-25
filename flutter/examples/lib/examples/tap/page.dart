import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class TapPage extends StatelessWidget {
  TapPage({super.key});

  final game = TapGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
