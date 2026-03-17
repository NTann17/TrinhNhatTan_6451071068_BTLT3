import 'package:flutter/material.dart';
import '../models/square_model.dart';
import '../widgets/square_item.dart';
import '../utils/color_utils.dart';

class SquareGrid extends StatefulWidget {
  const SquareGrid({super.key});

  @override
  State<SquareGrid> createState() => _SquareGridState();
}

class _SquareGridState extends State<SquareGrid> {
  final List<SquareModel> squares = List.generate(
    9,
    (_) => SquareModel(color: Colors.grey),
  );

  void changeColor(int index) {
    setState(() {
      squares[index].color = getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
        ),
        itemCount: squares.length,
        itemBuilder: (context, index) {
          return SquareItem(
            color: squares[index].color,
            onTap: () => changeColor(index),
          );
        },
      ),
    );
  }
}
