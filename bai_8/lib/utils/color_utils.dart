import 'package:flutter/material.dart';

Color getRandomColor() {
  final colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.cyan,
    Colors.pink,
    Colors.teal,
  ];
  colors.shuffle();
  return colors.first;
}
