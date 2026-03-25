import 'package:flutter/material.dart';
import 'stepper_touch_controller.dart';
import 'stepper_touch_model.dart';
import 'stepper_touch_style.dart';

class StepperTouchVertical extends StatelessWidget {
  final List<StepperTouchStep> steps;
  final StepperTouchController controller;
  final StepperTouchStyle style;

  const StepperTouchVertical({
    super.key,
    required this.steps,
    required this.controller,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(steps.length, (index) {
        bool isActive = index == controller.currentStep;
        bool isCompleted = index < controller.currentStep;

        Color color = isCompleted
            ? style.completedColor
            : isActive
            ? style.activeColor
            : style.pendingColor;

        return GestureDetector(
          onTap: () => controller.jumpTo(index),
          child: Row(
            children: [
              Container(
                width: style.stepSize,
                height: style.stepSize,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  steps[index].icon ?? Icons.circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Text(steps[index].title),
            ],
          ),
        );
      }),
    );
  }
}