import 'package:flutter/material.dart';

class BoxTapWidget extends StatelessWidget {
  const BoxTapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You tapped the box!')),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Tap Me',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
