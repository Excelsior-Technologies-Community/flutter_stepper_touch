import 'package:flutter/material.dart';
import 'stepper_touch_animation.dart';
import 'stepper_touch_controller.dart';
import 'stepper_touch_horizontal.dart';
import 'stepper_touch_model.dart';
import 'stepper_touch_style.dart';
import 'stepper_touch_vertical.dart';

class StepperTouch extends StatefulWidget {
  final List<StepperTouchStep> steps;
  final Axis direction;
  final StepperTouchController? controller;
  final StepperTouchStyle? style;
  final Duration animationDuration;

  const StepperTouch({
    super.key,
    required this.steps,
    this.direction = Axis.horizontal,
    this.controller,
    this.style,
    this.animationDuration = const Duration(milliseconds: 400),
  });

  @override
  State<StepperTouch> createState() => _StepperTouchState();
}

class _StepperTouchState extends State<StepperTouch> {
  late StepperTouchController controller;
  late StepperTouchStyle style;

  @override
  void initState() {
    super.initState();

    controller = widget.controller ?? StepperTouchController();
    style = widget.style ?? StepperTouchStyle();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget stepper = widget.direction == Axis.horizontal
        ? StepperTouchHorizontal(
      steps: widget.steps,
      controller: controller,
      style: style,
    )
        : StepperTouchVertical(
      steps: widget.steps,
      controller: controller,
      style: style,
    );

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          controller.next(widget.steps.length);
        } else {
          controller.previous();
        }
      },
      child: Column(
        children: [
          stepper,
          const SizedBox(height: 20),
          StepperTouchAnimatedSwitcher(
            duration: widget.animationDuration,
            child: Container(
              key: ValueKey(controller.currentStep),
              child:
              widget.steps[controller.currentStep].content ??
                  const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}