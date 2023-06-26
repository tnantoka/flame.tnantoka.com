import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart' hide Route;

class PauseGame extends FlameGame {
  late final RouterComponent router;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    router = RouterComponent(
      routes: {
        'home': Route(Home.new),
      },
      initialRoute: 'home',
    );
    await add(router);
  }
}

class Home extends Component with HasGameRef<PauseGame> {
  late final TextComponent _text;
  var _count = 0;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      ButtonComponent(
        position: Vector2(game.size.x * 0.5, game.size.y * 0.4),
        onPressed: () => _toggleRoute(),
        button: TextComponent(
          text: 'Pause/Resume Route',
          textRenderer: TextPaint(
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(game.size.x * 0.5, game.size.y * 0.5),
        onPressed: () => _toggleGame(),
        button: TextComponent(
          text: 'Pause/Resume Game',
          textRenderer: TextPaint(
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        anchor: Anchor.center,
      ),
    );

    await add(
      _text = TextComponent(
        text: '0',
        position: Vector2(game.size.x * 0.5, game.size.y * 0.6),
        anchor: Anchor.center,
      ),
    );
  }

  void _toggleRoute() {
    if (game.router.currentRoute.timeSpeed > 0) {
      game.router.currentRoute.stopTime();
    } else {
      game.router.currentRoute.resumeTime();
    }
  }

  void _toggleGame() {
    if (game.paused) {
      game.resumeEngine();
    } else {
      game.pauseEngine();
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    _count++;
    _text.text = _count.toString();
  }
}
