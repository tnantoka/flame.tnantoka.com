import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';

// <router2>
class RouterGame extends FlameGame {
  late final RouterComponent router;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    router = RouterComponent(
      routes: {
        'first': Route(FirstRoute.new),
        'second': Route(SecondRoute.new),
      },
      initialRoute: 'first',
    );
    await add(router);
  }
}
// </router2>

// <router1>
class FirstRoute extends Component with HasGameRef<RouterGame> {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      ButtonComponent(
        position: Vector2(game.size.x * 0.5, game.size.y * 0.5),
        onPressed: () => gameRef.router.pushNamed('second'),
        button: TextComponent(
          text: 'Second',
        ),
        anchor: Anchor.center,
      ),
    );
  }
}

class SecondRoute extends Component with HasGameRef<RouterGame> {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      ButtonComponent(
        position: Vector2(game.size.x * 0.5, game.size.y * 0.5),
        onPressed: () => gameRef.router.pop(),
        button: TextComponent(
          text: 'Back',
        ),
        anchor: Anchor.center,
      ),
    );
  }
}
// </router1>
