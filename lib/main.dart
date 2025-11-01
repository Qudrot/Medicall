import 'package:flutter/material.dart';
import 'package:medicall/bottom_navigation.dart';
import 'package:medicall/pages/forgot_password.dart';
import 'package:medicall/pages/login_page.dart';
import 'package:medicall/pages/onboarding_page.dart';
import 'package:medicall/pages/signup_page.dart';
import 'package:medicall/pages/validation_page.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:medicall/provider/user_cubit.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: MaterialApp(
        title: 'Save A Life',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          //textTheme: 
        ),
      
        debugShowCheckedModeBanner: false,
      
        routes: {
          "/o": (context) => OnboardingPage(),
          "/home": (context) => BottomNavigation(),
          "/login": (context) => LoginPage(),
          "/signup": (context) => SignupPage(),
          "/forgot": (context) => ForgotPasswordPage(),
          "/validate": (context) => ValidationPage(),
          
        },
        initialRoute: "/o",
      
        // home: BottomNavigation()
      ),
    );
  }
}
