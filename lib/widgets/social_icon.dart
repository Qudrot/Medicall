import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key,
  required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 64,
              child: Divider(height: 20, thickness: 1, color: Colors.black),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 64,
              child: Divider(height: 20, thickness: 1, color: Colors.black),
            ),
          ],
        ),

        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Container(
              width: 80,
              height: 48,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey.shade100,
                border: Border.all(color: Colors.grey.shade300, width: 1),
              ),
              //child: Image.asset("assets/facebook.png"),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/facebook.png",
                  width: 32,
                  height: 32,
                ),
              ),
            ),

            Container(
              width: 80,
              height: 48,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey.shade100,
                border: Border.all(color: Colors.grey.shade300, width: 1),
              ),
              //child: Image.asset("assets/facebook.png"),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/instagram.png",
                  width: 32,
                  height: 32,
                ),
              ),
            ),

            Container(
              width: 80,
              height: 48,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey.shade100,
                border: Border.all(color: Colors.grey.shade300, width: 1),
              ),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/linkedin.png",
                  width: 32,
                  height: 32,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
