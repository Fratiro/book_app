import 'package:flutter/material.dart';

class SlidedTextWithAnimation extends StatelessWidget {
  const SlidedTextWithAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ));
        });
  }
}