import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicall/widgets/custom_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int activeIndex = 0;

  List<OnboardingItem> items = [
    OnboardingItem(
      title: "Welcome to Medicall",
      subtitle:
          "We help you make ambulance requests for emergency and other purposes",
      asset: "assets/medicTwo.png",
    ),

    OnboardingItem(
      title: "Get emergency medical help fast",
      subtitle:
          "wherever you are. Need urgent help? We’ll connect you to the nearest available ambulance.",
      asset: "assets/medicThree.png",
    ),

    OnboardingItem(
      title: "Meet world class respondents",
      subtitle:
          "wherever you are. Need urgent help? We’ll connect you to world class respondents",
      asset: "assets/medic.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var onboardingItemShow = items[activeIndex];

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(onboardingItemShow.asset, width: 300, height: 300),
          ),
          Text(
            onboardingItemShow.title,
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            onboardingItemShow.subtitle,
            style: GoogleFonts.montserrat(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        
         CustomIndicator(
            indicatorCount: items.length,
            activeIndex: activeIndex,
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            activeIndex <= 0
                ? SizedBox(height: 0, width: 0)
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        activeIndex = activeIndex - 1;
                      });
                    },
                    child: Text("Back"),
                  ),

            ElevatedButton(
              onPressed: () {
                if (activeIndex < items.length - 1) {
                  setState(() {
                    activeIndex = activeIndex + 1;
                  });
                } else {
                  Navigator.of(context).pushReplacementNamed("/login");
                }
              },

              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingItem {
  String title;
  String subtitle;
  String asset;

  OnboardingItem({
    required this.title,
    required this.subtitle,
    required this.asset,
  });
}
