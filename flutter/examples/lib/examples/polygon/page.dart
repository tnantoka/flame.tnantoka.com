import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class PolygonPage extends StatelessWidget {
  PolygonPage({super.key});

  final game = PolygonGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
