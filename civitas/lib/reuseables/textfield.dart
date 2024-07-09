import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFields extends StatelessWidget {
  final String hinttext;
  const TextFields({Key? key, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white, fontSize: 16)),
            decoration: InputDecoration(
                focusColor: Colors.transparent,
                hintText: hinttext,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.7))),
          ),
        ));
  }
}
