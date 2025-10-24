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
          Padding(padding: EdgeInsets.all(16)),
          SizedBox(  //added sizebox to ensure skip is at a fixed position
            height: 72,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (activeIndex < items.length - 1)
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("/signup");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 16,),
                      child: Text(
                        "Skip >>",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 56),
          Container(
            //padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(16)
            ),
            clipBehavior: Clip.hardEdge,
              child: Image.asset(
                onboardingItemShow.asset,
                fit: BoxFit.cover,
              ),
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
