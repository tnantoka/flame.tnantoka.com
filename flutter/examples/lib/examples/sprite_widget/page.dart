import 'package:flame/game.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';

class SpriteWidgetPage extends StatelessWidget {
  const SpriteWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          const Text(
            'SpriteWidget',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
          // <sprite_widget1>
          SizedBox(
            height: 64,
            width: 64,
            child: SpriteWidget.asset(path: 'asteroid.png'),
          ),
          // </sprite_widget1>
          // <sprite_widget2>
          SizedBox(
            height: 64,
            width: 64,
            child: SpriteAnimationWidget.asset(
              path: 'explosion.png',
              data: SpriteAnimationData.sequenced(
                textureSize: Vector2.all(32),
                amount: 6,
                stepTime: 0.2,
              ),
            ),
          ),
          // </sprite_widget2>
        ],
      ),
    );
  }
}
