import 'package:flutter/material.dart';
import 'package:medicall/provider/user_notifier.dart';
import 'package:medicall/widgets/custom_button.dart';
import 'package:medicall/widgets/custom_textfield.dart';
import 'package:medicall/widgets/password_textfield.dart';
import 'package:medicall/widgets/signup_login_bottom_text.dart';
import 'package:medicall/widgets/signup_login_text.dart';
import 'package:medicall/widgets/social_icon.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var userNotifier = Provider.of<UserNotifier>(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            SigninLoginHeading(
              heading: "Welcome back",
              subheading: "Glad to see you again!",
            ),
            SizedBox(height: 32),
            CustomTextField(
              label: "Email",
              textEditingController: emailController,
            ),
            SizedBox(height: 16),
            PasswordTextField(
              label: "Password",
              textEditingController: passwordController,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "/forgot");
                  }, 
                  child: Text("Forgot Password?",)),
              ],
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Login",
              onPressed: () {
                userNotifier.login(emailController.text, passwordController.text, context);


                /*print(emailController.text);
                if (emailController.text != "kay@gmail.com") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Not a registered email")),
                  );
                  return;
                }

                if (passwordController.text != "23456") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Not a valid password, Try agin")),
                  ); 

                  //showDialog(context: context, builder: (context) {
                  //return AlertDialog(
                  //content: Text("Not a valid Password try again"),
                  //actions: [],
                  //);
                  //});

                  return;
                }
                Navigator.of(context).pushReplacementNamed("/home"); */
              },
            ),
            SizedBox(height: 24),
            SocialIcons(text: "Log in using"),
            SizedBox(height: 36),
            SignupLoginBottom(
              text: "Don't have an account? ",
              pageRoute: "/signup",
              router: "Sign up",
            ),
          ],
        ),
      ),
    );
    
  }
}


