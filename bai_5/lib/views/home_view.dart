// views/home_view.dart
import 'package:flutter/material.dart';
import '../widgets/touch_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Touch Position Demo'),
      ),
      body: const Center(
        child: TouchContainer(),
      ),
    );
  }
}
