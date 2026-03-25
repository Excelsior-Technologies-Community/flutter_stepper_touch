import 'package:flutter/material.dart';

class StepperTouchController extends ChangeNotifier {
  int _currentStep = 0;

  int get currentStep => _currentStep;

  void next(int max) {
    if (_currentStep < max - 1) {
      _currentStep++;
      notifyListeners();
    }
  }

  void previous() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }
  }

  void jumpTo(int step) {
    _currentStep = step;
    notifyListeners();
  }
}