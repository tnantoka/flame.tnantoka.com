import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class CameraPage extends StatelessWidget {
  CameraPage({super.key});

  final game = CameraGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
