import 'package:flutter/material.dart';
import '../widgets/custom_slider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Slider')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('MSSV: 6451071068', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            CustomSlider(
              min: 0,
              max: 100,
              onChanged: (value) {
                // Xử lý giá trị slider nếu cần
              },
            ),
          ],
        ),
      ),
    );
  }
}
