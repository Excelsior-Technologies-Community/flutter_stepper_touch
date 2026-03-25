import 'package:flutter/material.dart';
import 'package:flutter_stepper_touch/flutter_stepper_touch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
          title: Text("Stepper Touch",style: TextStyle(color: Colors.white),)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: StepperTouch(
          steps: [
            StepperTouchStep(
              title: "Login",
              icon: Icons.login,
              content: const Text("Login Step Content"),
            ),
            StepperTouchStep(
              title: "Address",
              icon: Icons.home,
              content: const Text("Address Step Content"),
            ),
            StepperTouchStep(
              title: "Payment",
              icon: Icons.payment,
              content: const Text("Payment Step Content"),
            ),
          ],
        ),
      ),
    );
  }
}