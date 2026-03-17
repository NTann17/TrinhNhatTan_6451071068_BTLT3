import 'package:flutter/material.dart';

class LongPressCard extends StatelessWidget {
  const LongPressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Long press detected')),
        );
      },
      child: const Card(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Press and hold me'),
              SizedBox(height: 8),
              Text('MSSV: 6451071068'),
            ],
          ),
        ),
      ),
    );
  }
}
