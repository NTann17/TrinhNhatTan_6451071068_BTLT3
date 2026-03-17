import 'package:flutter/material.dart';

class SquareItem extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;

  const SquareItem({
    super.key,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}
