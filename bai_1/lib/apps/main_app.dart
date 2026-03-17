import 'package:flutter/material.dart';
import '../views/tap_demo_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TapDemoScreen(),
    );
  }
}
