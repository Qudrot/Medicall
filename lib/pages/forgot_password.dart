import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicall/snackbar_services.dart';
import 'package:medicall/widgets/custom_button.dart';
import 'package:medicall/widgets/custom_textfield.dart';
import 'package:otp_input/otp_input.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool showOtp = false;
  late Timer time;
  int seconds = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter the email address you will like to receive your recovery pin",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            CustomTextField(label: "Email Address"),
            showOtp
                ? _buildOtpview()
                : CustomButton(
                    onPressed: () {
                      setState(() {
                        showOtp = true;
                      });
                      // set re-request otp timer
                      time = Timer.periodic(Duration(seconds: 1), (timer) {
                        print("ticked");
                        if (seconds <= 1) {
                          timer.cancel();
                        }
                        setState(() {
                          seconds--;
                        });
                      });
                    },
                    text: "Get OTP",
                  ),
          ],
        ),
      ),
    );
  }

  

  Widget _buildOtpview() {
    return Column(
      spacing: 8,
      children: [
        Text("Check your email address and enter the otp you received"),
        OtpInputField(
          otpInputFieldCount: 5,
          fieldStyle: OtpFieldStyle.circle,
          onOtpEntered: (otp) {
            print("Enter OTP: $otp");
            if (otp == "23456") {
              Navigator.pushReplacementNamed(context, "/home");
            } else {
              SnackbarServices.showSnackBar(context, "Invalid OTP");
            }
          },
        ),
        Text("$seconds seconds to request again"),
      ],
    );
  }
}
