import 'package:flutter/material.dart';
import '../views/main_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Square Color Switcher',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
