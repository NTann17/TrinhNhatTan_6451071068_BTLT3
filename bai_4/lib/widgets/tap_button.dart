import 'package:flutter/material.dart';

class TapButton extends StatelessWidget {
  final VoidCallback onTap;
  const TapButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: const Text('Tap Here'),
    );
  }
}
