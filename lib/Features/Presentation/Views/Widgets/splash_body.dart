import 'package:book_app/Core/Utilities/assets.dart';
import 'package:book_app/Features/Presentation/Views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    
    // Initialize the sliding text animation
    initSliderTextAnimation();
  }

  @override
  void dispose() {
    // Dispose of the animation controller
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Display the app logo
        Image.asset(ProjectAssets.logo),

        // Display sliding text with animation
        SlidedTextWithAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  // Initialize the animation controller and sliding animation
  void initSliderTextAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    
    // Start the animation
    animationController.forward();
  }
}