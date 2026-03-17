import 'package:flutter/material.dart';
import '../widgets/draggable_circle.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DraggableCircle(),
          Positioned(
            top: 40,
            left: 20,
            child: Text(
              'MSSV: 6451071068',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
