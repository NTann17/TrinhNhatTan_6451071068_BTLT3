import 'package:flutter/material.dart';
import '../models/circle_position.dart';
import '../utils/constants.dart';

class DraggableCircle extends StatefulWidget {
  @override
  _DraggableCircleState createState() => _DraggableCircleState();
}

class _DraggableCircleState extends State<DraggableCircle> {
  CirclePosition position = CirclePosition(x: 100, y: 100);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: position.x,
          top: position.y,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                position.x += details.delta.dx;
                position.y += details.delta.dy;
              });
            },
            child: Container(
              width: kCircleSize,
              height: kCircleSize,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
