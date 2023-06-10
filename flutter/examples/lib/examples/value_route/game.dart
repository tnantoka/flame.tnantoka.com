import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';

class ValueRouteGame extends FlameGame {
  late final RouterComponent router;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    router = RouterComponent(
      routes: {'home': Route(Home.new)},
      initialRoute: 'home',
    );
    await add(router);
  }
}

class Home extends Component with HasGameRef<ValueRouteGame> {
  late final TextComponent _resultText;
  var result = -1;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // <value_route2>
    await add(
      ButtonComponent(
        position: Vector2(game.size.x * 0.5, game.size.y * 0.5),
        onPressed: () async {
          result = await game.router.pushAndWait(Dialog('Choose a number'));
        },
        button: TextComponent(
          text: 'Dialog',
        ),
        anchor: Anchor.center,
      ),
    );
    // </value_route2>

    _resultText = TextComponent(
      text: '-1',
      position: Vector2(
        game.size.x * 0.5,
        game.size.y * 0.6,
      ),
    );
    await add(_resultText);
  }

  @override
  void update(double dt) {
    super.update(dt);

    _resultText.text = result.toString();
  }
}

// <value_route1>
class Dialog extends ValueRoute<int> with HasGameRef {
  Dialog(this.text) : super(value: -1);

  final String text;

  @override
  Component build() {
    return RectangleComponent(
      paint: BasicPalette.gray.paint(),
      size: Vector2(200, 200),
      position: Vector2(
        gameRef.size.x / 2 - 100,
        gameRef.size.y / 2 - 100,
      ),
      children: [
        TextComponent(
          text: text,
        ),
        for (var i = 0; i < 3; i++)
          ButtonComponent(
            onPressed: () => completeWith(i),
            button: TextComponent(
              text: i.toString(),
            ),
            position: Vector2(0, (i + 1) * 40),
            size: Vector2(200, 30),
          ),
      ],
    );
  }
}
// </value_route1>
