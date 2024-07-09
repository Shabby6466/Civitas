import 'package:civitas/reuseables/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Image.asset(
                  "assets/images/ClubConnect_logo.jpg",
                  scale: 10,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const TextFields(hinttext: "Enter your Email/Phone Number"),
              const SizedBox(
                height: 20,
              ),
              const TextFields(hinttext: "Enter Password"),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
