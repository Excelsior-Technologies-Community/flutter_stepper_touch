import 'package:flutter/material.dart';

class StepperTouchStep {
  final String title;
  final String? subtitle;
  final Widget? content;
  final IconData? icon;

  StepperTouchStep({
    required this.title,
    this.subtitle,
    this.content,
    this.icon,
  });
}