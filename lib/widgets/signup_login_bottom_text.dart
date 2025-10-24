import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupLoginBottom extends StatelessWidget {
  const SignupLoginBottom({
    super.key,
    required this.text,
    required this.pageRoute,
    required this.router
  });
  final String text;
  final String pageRoute;
  final String router;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //spacing: 4,
      children: [
        Text(text),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(pageRoute);
          },
          child: Text(
            router,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}