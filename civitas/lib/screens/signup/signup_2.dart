import 'package:civitas/reuseables/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen2 extends StatelessWidget {
  const SignupScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
            const TextFields(hinttext: "Name"),
            const SizedBox(
              height: 8,
            ),
            const TextFields(hinttext: "University"),
            const SizedBox(
              height: 8,
            ),
            const TextFields(hinttext: "Degree"),
            const SizedBox(
              height: 8,
            ),
            const TextFields(hinttext: "Batch"),
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
                    "Signup",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
