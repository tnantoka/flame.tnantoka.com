import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class JoystickPage extends StatelessWidget {
  JoystickPage({super.key});

  final game = JoystickGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
