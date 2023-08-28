import 'package:flutter/material.dart';

import '../main.dart';

import 'hello/page.dart';
import 'lifecycle/page.dart';
import 'rect/page.dart';
import 'line/page.dart';
import 'debug/page.dart';
import 'circle/page.dart';
import 'move/page.dart';
import 'joystick/page.dart';
import 'text/page.dart';
import 'button/page.dart';
import 'overlay/page.dart';
import 'sprite/page.dart';
import 'animation/page.dart';
import 'parallax/page.dart';
import 'tap/page.dart';
import 'particle/page.dart';
import 'physics/page.dart';
import 'collision/page.dart';
import 'polygon/page.dart';
import 'sound/page.dart';
import 'effect/page.dart';
import 'text_box/page.dart';
import 'custom_painter/page.dart';
import 'screen_hitbox/page.dart';
import 'router/page.dart';
import 'priority/page.dart';
import 'keyboard_events/page.dart';
import 'keyboard_listener/page.dart';
import 'camera/page.dart';
import 'sprite_sheet/page.dart';
import 'glow/page.dart';
import 'flip/page.dart';
import 'value_route/page.dart';
import 'arc/page.dart';
import 'scale_mode/page.dart';
import 'sprite_widget/page.dart';
import 'pause/page.dart';
import 'time_scale/page.dart';
import 'ripple/page.dart';
import 'animation_ticker/page.dart';
import 'loading/page.dart';
import 'error/page.dart';
import 'background/page.dart';
import 'pathfinding/page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
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
  '/loading': (context) => LoadingPage(),
  '/error': (context) => ErrorPage(),
  '/background': (context) => BackgroundPage(),
  '/pathfinding': (context) => PathfindingPage(),
};
