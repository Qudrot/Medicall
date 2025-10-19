import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              "Register your details below",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "Email",
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "Password",
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: Text("Login")),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(color: Colors.grey.shade200, thickness: 2, height: 10),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Or Login with",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(color: Colors.grey.shade200, thickness: 2, height: 10),
                ),
              ],
            ),

            SizedBox(height: 20),

            _socialIcons(),
          ],
        ),
      ),
    );
  }
}

Row _socialIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 80,
        height: 48,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade300, width: 1)
        ),
        child: Image.asset("assets/facebook.png"),
      ),
      SizedBox(width: 16),
      Container(
        width: 80,
        height: 48,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade300, width: 1)
        ),
        child: Image.asset("assets/instagram.png"),
      ),
      SizedBox(width: 16),
      Container(
        width: 80,
        height: 48,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade300, width: 1)
        ),
        child: Image.asset("assets/linkedin.png"),
      ),
    ],
  );
}
