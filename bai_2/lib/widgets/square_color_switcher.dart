import 'package:flutter/material.dart';

class SquareColorSwitcher extends StatefulWidget {
  @override
  _SquareColorSwitcherState createState() => _SquareColorSwitcherState();
}

class _SquareColorSwitcherState extends State<SquareColorSwitcher> {
  Color _color = Colors.blue;

  void _toggleColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _toggleColor,
      child: Container(
        width: 200,
        height: 200,
        color: _color,
      ),
    );
  }
}
