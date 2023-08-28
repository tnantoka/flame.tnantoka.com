import 'dart:math';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pathfinding/finders/astar.dart';
import 'package:pathfinding/core/grid.dart';

class PathfindingGame extends FlameGame {
  final _random = Random();

  // <pathfinding1>
  static const _rows = 20;
  static const _cols = 10;
  final _cells = List<List<int>>.generate(
    _rows,
    (_) => List<int>.generate(_cols, (_) => 0),
  );
  final _path = <Vector2>[];
  // </pathfinding1>

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // <pathfinding2>
    for (var i = 0; i < _rows; i++) {
      for (var j = 0; j < _cols; j++) {
        if (_random.nextInt(10) == 0) {
          _cells[i][j] = 1;
        }
      }
    }

    Vector2? start;
    Vector2? goal;
    while (start == null || goal == null) {
      final i = _random.nextInt(_rows);
      final j = _random.nextInt(_cols);
      if (_cells[i][j] == 0) {
        if (start == null) {
          start = Vector2(j.toDouble(), i.toDouble());
        } else {
          goal = Vector2(j.toDouble(), i.toDouble());
        }
      }
    }
    // </pathfinding2>

    // <pathfinding3>
    final grid = Grid(_cols, _rows, _cells);
    final finder = AStarFinder();
    final found = finder.findPath(
      start.x.toInt(),
      start.y.toInt(),
      goal.x.toInt(),
      goal.y.toInt(),
      grid,
    );
    for (final point in found) {
      _path.add(Vector2(point[0], point[1]));
    }
    // </pathfinding3>
  }

  @override
  // <pathfinding4>
  void render(Canvas canvas) {
    super.render(canvas);

    final cellSize = Vector2.all(20);
    for (var i = 0; i < _rows; i++) {
      for (var j = 0; j < _cols; j++) {
        canvas.drawRect(
          Rect.fromLTWH(
            (j + 1) * cellSize.x,
            (i + 1) * cellSize.y,
            cellSize.x,
            cellSize.y,
          ),
          Paint()..color = _cells[i][j] == 0 ? Colors.white : Colors.grey,
        );
      }
    }

    for (var i = 0; i < _path.length; i++) {
      final point = _path[i];
      final color = i == 0
          ? Colors.green
          : i == _path.length - 1
              ? Colors.red
              : Colors.blue;

      canvas.drawRect(
        Rect.fromLTWH(
          (point.x + 1) * cellSize.x,
          (point.y + 1) * cellSize.y,
          cellSize.x,
          cellSize.y,
        ),
        Paint()..color = color,
      );
    }
  }
  // </pathfinding4>
}
