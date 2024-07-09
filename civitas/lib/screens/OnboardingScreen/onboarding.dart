import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Image.asset("assets/images/ClubConnect_onboarding.png"),
        Align(
          alignment: Alignment.bottomCenter,
          child: DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.3,
              builder: (context, scrollController) {
                return Container(
                    padding: const EdgeInsets.all(16),
                    height: 215,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Center(
                            child: Icon(
                              Icons.bolt,
                              color: Colors.white,
                            ),
                          ),
                          Center(
                            child: Text(
                              "Connect Lead Succed",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 22, color: Colors.white)),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Join clubs",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/login'),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/signup'),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: Text(
                                    "Signup",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ));
              }),
        )
      ],
    ));
  }
}
