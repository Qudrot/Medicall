import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class SigninLoginHeading extends StatelessWidget {
  const SigninLoginHeading({
    super.key,
    required this.heading,
    required this.subheading
  });

  final String heading;
  final String subheading;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Text(
          heading,
          textAlign: TextAlign.center,
          style: GoogleFonts.playfairDisplay(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.blueAccent,
          ),
        ),

         Text(
              subheading,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
      ],
    );
  }
}