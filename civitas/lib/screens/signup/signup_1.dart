import 'package:civitas/reuseables/textfield.dart';
import 'package:civitas/screens/signup/signup_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  "assets/images/ClubConnect_logo.jpg",
                  scale: 10,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const SizedBox(
                height: 8,
              ),
              const TextFields(hinttext: "Email"),
              const SizedBox(
                height: 8,
              ),
              const TextFields(hinttext: "Phone Number"),
              const SizedBox(
                height: 8,
              ),
              const TextFields(hinttext: "Password"),
              const SizedBox(
                height: 8,
              ),
              const TextFields(hinttext: "Confirm Password"),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen2())),
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
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
