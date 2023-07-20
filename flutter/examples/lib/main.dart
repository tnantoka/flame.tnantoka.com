import 'package:flutter/material.dart';

import 'examples/examples.dart';

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
  '/effect': (context) => EffectPage(),
  '/text_box': (context) => TextBoxPage(),
  '/custom_painter': (context) => CustomPainterPage(),
  '/screen_hitbox': (context) => ScreenHitboxPage(),
  '/router': (context) => RouterPage(),
  '/priority': (context) => PriorityPage(),
  '/keyboard_events': (context) => KeyboardEventsPage(),
  '/keyboard_listener': (context) => KeyboardListenerPage(),
  '/camera': (context) => CameraPage(),
  '/sprite_sheet': (context) => SpriteSheetPage(),
  '/glow': (context) => GlowPage(),
  '/flip': (context) => FlipPage(),
  '/value_route': (context) => ValueRoutePage(),
  '/arc': (context) => ArcPage(),
  '/scale_mode': (context) => ScaleModePage(),
  '/sprite_widget': (context) => const SpriteWidgetPage(),
  '/pause': (context) => PausePage(),
  '/time_scale': (context) => TimeScalePage(),
  '/ripple': (context) => RipplePage(),
  '/animation_ticker': (context) => AnimationTickerPage(),
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
