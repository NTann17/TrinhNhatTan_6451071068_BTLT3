import 'package:flutter/material.dart';
import '../widgets/box_tap_widget.dart';

class TapDemoScreen extends StatelessWidget {
  const TapDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            BoxTapWidget(),
            SizedBox(height: 24),
            Text('MSSV: 6451071068',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
