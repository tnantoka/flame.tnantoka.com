import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game.dart';

class OverlayPage extends StatelessWidget {
  OverlayPage({super.key});

  final game = OverlayGame();

  // <overlay2>
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GameWidget<OverlayGame>(
        game: game,
        overlayBuilderMap: {
          'modal': (_, game) => Modal(game: game),
        },
      ),
    );
  }
  // </overlay2>
}

// <overlay1>
class Modal extends StatelessWidget {
  const Modal({super.key, required this.game});

  final OverlayGame game;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withAlpha(100),
      child: SimpleDialog(
        title: const Text('Modal'),
        children: [
          SimpleDialogOption(
            child: const Text('OK'),
            onPressed: () => game.overlays.remove('modal'),
          ),
        ],
      ),
    );
  }
}
// </overlay1>