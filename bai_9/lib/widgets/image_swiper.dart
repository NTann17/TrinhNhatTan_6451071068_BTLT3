import 'package:flutter/material.dart';
import '../utils/image_list.dart';

class ImageSwiper extends StatefulWidget {
  const ImageSwiper({super.key});

  @override
  _ImageSwiperState createState() => _ImageSwiperState();
}

class _ImageSwiperState extends State<ImageSwiper> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return Center(
          child: Image.network(
            imageList[index].url,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}