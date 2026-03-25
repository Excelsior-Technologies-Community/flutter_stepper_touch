# 🎯 flutter_stepper_touch
```
flutter_stepper_touch is a powerful touch enabled stepper navigation library for Flutter that helps developers build modern onboarding flows, form steppers, progress trackers and timeline UI with smooth gesture interaction and animations.

It allows step navigation using tap, swipe and long press gestures without writing complex gesture handling or animation logic.

The library supports both horizontal and vertical steppers, customizable step styles, controller based navigation and animated content transitions.

Developers can easily create beautiful stepper experiences for Android, iOS, Web and Desktop applications using a lightweight and flexible API.
```

----

## ✨ Features
```
- 👆 Tap to change step  
- 👉 Swipe left / right step navigation  
- ⏱ Long press jump to step  
- ↔️ Horizontal stepper layout  
- ↕️ Vertical stepper layout  
- 🎨 Custom step colors and sizes  
- 🎯 Active / Completed / Pending states  
- 🎮 StepperTouchController support  
- ⚡ Smooth animated content transition  
- 🧩 Custom step content widget  
- 📦 Lightweight and high performance  
- 🌐 Supports Android, iOS, Web & Desktop
```

----

## 📦 Installation

Add dependency in your pubspec.yaml
```
dependencies:
  flutter_stepper_touch:
    path: https://github.com/Excelsior-Technologies-Community/flutter_stepper_touch/tree/stage
```
Then run:
```
flutter pub get
```

----

## 🎬 Preview

https://github.com/user-attachments/assets/0d8f8d49-27e4-42ec-86db-4ec34867b5ed

----

## 🗂 File Structure
```
flutter_stepper_touch/
│
├─ lib/
│   ├─ flutter_stepper_touch.dart
│   │   // Main export file
│   │
│   └─ main.dart
│   │  // Demo application
│   │    
│   └─ src/
│       ├─ stepper_touch.dart
│       │   // Main Stepper widget
│       │
│       ├─ stepper_touch_controller.dart
│       │   // Step navigation controller
│       │
│       ├─ stepper_touch_model.dart
│       │   // Step data model
│       │
│       ├─ stepper_touch_style.dart
│       │   // Stepper UI customization style
│       │
│       ├─ stepper_touch_horizontal.dart
│       │   // Horizontal stepper UI
│       │
│       ├─ stepper_touch_vertical.dart
│       │   // Vertical stepper UI
│       │
│       └─ stepper_touch_animation.dart
│           // Step transition animation
│      
│
├─ README.md
│   // Package documentation
│
├─ LICENSE
│   // Open source license
│
└─ pubspec.yaml
    // Package configuration
```

----

## 🚀 How To Use

1️⃣ Import Package
```
import 'package:flutter_stepper_touch/flutter_stepper_touch.dart';
```
2️⃣ Create Stepper
```
StepperTouch(
  steps: [
    StepperTouchStep(
      title: "Login",
      icon: Icons.login,
      content: Text("Login Step"),
    ),
    StepperTouchStep(
      title: "Address",
      icon: Icons.home,
      content: Text("Address Step"),
    ),
    StepperTouchStep(
      title: "Payment",
      icon: Icons.payment,
      content: Text("Payment Step"),
    ),
  ],
)
```
3️⃣ Vertical Stepper
```
StepperTouch(
  direction: Axis.vertical,
  steps: steps,
)
```
4️⃣ Using Controller
```
final controller = StepperTouchController();

StepperTouch(
  controller: controller,
  steps: steps,
)
```

----

## 🎛 StepperTouch Properties

| Property            | Type                      | Default           | Description                                          |
| ------------------- | ------------------------- | ----------------- | ---------------------------------------------------- |
| `steps`             | `List<StepperTouchStep>`  | **Required**      | List of steps to display in stepper                  |
| `direction`         | `Axis`                    | `Axis.horizontal` | Stepper layout direction (horizontal / vertical)     |
| `controller`        | `StepperTouchController?` | `null`            | Control step navigation programmatically             |
| `style`             | `StepperTouchStyle?`      | Default Style     | Customize stepper UI colors, size and line thickness |
| `animationDuration` | `Duration`                | `400ms`           | Duration of step content transition animation 

----

## 🎯 StepperTouchStep Properties

| Property   | Type        | Default        | Description                                  |
| ---------- | ----------- | -------------- | -------------------------------------------- |
| `title`    | `String`    | **Required**   | Step title text                              |
| `subtitle` | `String?`   | `null`         | Optional step subtitle                       |
| `content`  | `Widget?`   | `null`         | Content widget displayed when step is active |
| `icon`     | `IconData?` | `Icons.circle` | Icon shown inside step circle                |

----

## 🎮 StepperTouchController Methods

| Method           | Description           |
| ---------------- | --------------------- |
| `next(maxSteps)` | Move to next step     |
| `previous()`     | Move to previous step |
| `jumpTo(index)`  | Jump to specific step |


----

## 🎨 StepperTouchStyle Properties

| Property         | Type     | Default | Description             |
| ---------------- | -------- | ------- | ----------------------- |
| `activeColor`    | `Color`  | `Blue`  | Active step color       |
| `completedColor` | `Color`  | `Green` | Completed step color    |
| `pendingColor`   | `Color`  | `Grey`  | Pending step color      |
| `stepSize`       | `double` | `40`    | Step circle size        |
| `lineThickness`  | `double` | `3`     | Progress line thickness |


----

## 📄 MIT License
```
Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software without restriction.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```



