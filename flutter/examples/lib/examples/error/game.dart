import 'package:flame/game.dart';

class ErrorGame extends FlameGame {
  // <error2>
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await Future<void>.delayed(
      const Duration(seconds: 10),
    );

    throw 'Error';
  }
  // </error2>
}
