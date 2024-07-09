import 'package:civitas/screens/OnboardingScreen/onboarding.dart';
import 'package:civitas/screens/login/login.dart';
import 'package:civitas/screens/signup/signup_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Civista());
}

class Civista extends StatelessWidget {
  const Civista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Onboarding(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
      },
    );
  }
}
