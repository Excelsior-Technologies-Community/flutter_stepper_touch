import 'package:flutter/material.dart';

class StepperTouchStyle {
  final Color activeColor;
  final Color completedColor;
  final Color pendingColor;
  final double lineThickness;
  final double stepSize;

  StepperTouchStyle({
    this.activeColor = Colors.blue,
    this.completedColor = Colors.green,
    this.pendingColor = Colors.grey,
    this.lineThickness = 3,
    this.stepSize = 40,
  });
}