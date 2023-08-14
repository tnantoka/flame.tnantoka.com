import 'package:flutter/material.dart';

import 'examples/examples.dart';

void main() {
  runApp(const MyApp());
}

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
