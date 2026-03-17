import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  const CustomSlider({
    Key? key,
    required this.min,
    required this.max,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    double sliderWidth = 300;
    double knobSize = 32;
    double trackHeight = 8;

    return SizedBox(
      width: sliderWidth,
      height: knobSize,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            width: sliderWidth,
            height: trackHeight,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(trackHeight / 2),
            ),
          ),
          Positioned(
            left: (_value - widget.min) / (widget.max - widget.min) * (sliderWidth - knobSize),
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  double dx = details.localPosition.dx;
                  double percent = dx / (sliderWidth - knobSize);
                  percent = percent.clamp(0.0, 1.0);
                  _value = widget.min + percent * (widget.max - widget.min);
                  widget.onChanged(_value);
                });
              },
              child: Container(
                width: knobSize,
                height: knobSize,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    _value.toInt().toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
