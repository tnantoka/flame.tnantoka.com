import 'package:flutter/material.dart';

import 'examples/hello/page.dart';
import 'examples/lifecycle/page.dart';
import 'examples/rect/page.dart';
import 'examples/line/page.dart';
import 'examples/debug/page.dart';
import 'examples/circle/page.dart';
import 'examples/move/page.dart';
import 'examples/joystick/page.dart';
import 'examples/text/page.dart';
import 'examples/button/page.dart';
import 'examples/overlay/page.dart';
import 'examples/sprite/page.dart';
import 'examples/animation/page.dart';
import 'examples/parallax/page.dart';
import 'examples/tap/page.dart';
import 'examples/particle/page.dart';
import 'examples/physics/page.dart';
import 'examples/collision/page.dart';
import 'examples/polygon/page.dart';
import 'examples/sound/page.dart';

void main() {
  runApp(const MyApp());
}

final routes = {
  '/': (context) => const MyHomePage(),
  '/hello': (context) => HelloPage(),
  '/lifecycle': (context) => LifecyclePage(),
  '/rect': (context) => RectPage(),
  '/line': (context) => LinePage(),
  '/debug': (context) => DebugPage(),
  '/circle': (context) => CirclePage(),
  '/move': (context) => MovePage(),
  '/joystick': (context) => JoystickPage(),
  '/text': (context) => TextPage(),
  '/button': (context) => ButtonPage(),
  '/overlay': (context) => OverlayPage(),
  '/sprite': (context) => SpritePage(),
  '/animation': (context) => AnimationPage(),
  '/parallax': (context) => ParallaxPage(),
  '/tap': (context) => TapPage(),
  '/particle': (context) => ParticlePage(),
  '/physics': (context) => PhysicsPage(),
  '/collision': (context) => CollisionPage(),
  '/polygon': (context) => PolygonPage(),
  '/sound': (context) => SoundPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examples',
      initialRoute: '/',
      routes: routes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (final route in routes.keys)
            ListTile(
              title: Text(route),
              onTap: () {
                Navigator.pushNamed(context, route);
              },
            ),
        ],
      ),
    );
  }
}
