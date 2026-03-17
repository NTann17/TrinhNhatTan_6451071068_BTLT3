import 'package:flutter/material.dart';
import '../widgets/image_swiper.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Swipe Images')),
      body: ImageSwiper(),
    );
  }
}