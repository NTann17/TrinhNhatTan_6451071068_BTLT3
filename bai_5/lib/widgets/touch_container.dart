// widgets/touch_container.dart
import 'package:flutter/material.dart';
import '../models/touch_position.dart';
import '../utils/format_position.dart';

class TouchContainer extends StatefulWidget {
  const TouchContainer({Key? key}) : super(key: key);

  @override
  State<TouchContainer> createState() => _TouchContainerState();
}

class _TouchContainerState extends State<TouchContainer> {
  TouchPosition? _position;

  void _updatePosition(PointerDownEvent event) {
    setState(() {
      _position = TouchPosition(event.localPosition.dx, event.localPosition.dy);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _updatePosition,
      child: Container(
        width: double.infinity,
        height: 400,
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'MSSV: 6451071068',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              _position == null
                  ? 'Chạm vào Container để xem tọa độ'
                  : formatPosition(_position!.x, _position!.y),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
