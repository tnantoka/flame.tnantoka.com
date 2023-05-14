import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class RouterPage extends StatelessWidget {
  RouterPage({super.key});

  final game = RouterGame();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget(game: game),
    );
  }
}
