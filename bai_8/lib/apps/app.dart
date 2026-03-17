import 'package:flutter/material.dart';
import '../views/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
