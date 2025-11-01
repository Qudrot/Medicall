
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicall/snackbar_services.dart';
import 'package:medicall/widgets/custom_button.dart';
import 'package:otp_input/otp_input.dart';

class ValidationPage extends StatefulWidget {
  const ValidationPage({super.key});

  @override
  State<ValidationPage> createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  bool otpState = false;
  late Timer time;
  int seconds = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          Column(
            spacing: 2,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "We just sent an email",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Enter the security code we sent to",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Text("+2345678901", style: TextStyle(fontSize: 18,),),
                label: Icon(Icons.edit, size: 24,),
              ),
              
              OtpInputField(
                otpInputFieldCount: 4,
          
                onOtpEntered: (otp) {
                  
                  if (otp == "1237") {
                    Navigator.pushReplacementNamed(context, "/home");
                  } else {
                    SnackbarServices.showSnackBar(context, "Invalid OTP");
                  }
      
                },
                
              ),
          
            ],
          ),
        ],
      ),
    );
  }
}
