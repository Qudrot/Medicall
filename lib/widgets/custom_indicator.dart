import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
    required this.indicatorCount,
    required this.activeIndex
    });

    final int indicatorCount;
    final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        indicatorCount,
        (index) => Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: activeIndex == index? Colors.blue : Colors.blue.shade200,
          ),
          height: 6,
          width: 12,
        )),
    );
  }
}