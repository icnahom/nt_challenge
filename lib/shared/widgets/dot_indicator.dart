import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class MyDotsIndicator extends StatelessWidget {
  const MyDotsIndicator({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 4,
      position: currentIndex.toDouble(),
      decorator: DotsDecorator(
        size: const Size(8, 8),
        activeSize: const Size(8, 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.5),
        ),
        activeShape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            strokeAlign: StrokeAlign.outside,
          ),
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
