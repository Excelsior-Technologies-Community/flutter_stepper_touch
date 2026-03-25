import 'package:flutter/material.dart';

class StepperTouchAnimatedSwitcher extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const StepperTouchAnimatedSwitcher({
    super.key,
    required this.child,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween(
            begin: const Offset(0.3, 0),
            end: Offset.zero,
          ).animate(animation),
          child: FadeTransition(opacity: animation, child: child),
        );
      },
      child: child,
    );
  }
}