import 'package:flutter/material.dart';
import 'package:medicall/provider/user_cubit.dart';
import 'package:medicall/widgets/custom_button.dart';
import 'package:medicall/widgets/custom_textfield.dart';
import 'package:medicall/widgets/password_textfield.dart';
import 'package:medicall/widgets/signup_login_bottom_text.dart';
import 'package:medicall/widgets/signup_login_text.dart';
import 'package:medicall/widgets/social_icon.dart';
import 'package:provider/provider.dart';
 

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            SizedBox(height: 100),
            SigninLoginHeading(
              heading: "Get Started",
              subheading: "Create an account to continue",
            ),
            CustomTextField(
              label: "Username",
              textEditingController: usernameController,
            ),
            CustomTextField(
              label: "Email",
              textEditingController: emailController,
            ),
            PasswordTextField(
              label: "Password",
              textEditingController: passwordController,
            ),
            PasswordTextField(
              label: "Confirm Password",
              textEditingController: passwordController,
            ),
            CustomButton(
              text: "Sign up",
              
              onPressed: () {
                
                userNotifier.signup(usernameController.text, emailController.text, context);



                /*if (usernameController.text != "KudiratIjeoma") {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Invalid username")));
                  return;
                }
                if (emailController.text != "kay@gmail.com") {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Invalid email")));
                  return;
                }
                Navigator.of(context).pushReplacementNamed("/home"); */
              },
            ),
            SocialIcons(text: "Sign up using"),
            SignupLoginBottom(
              text: "Already have an account? ",
              pageRoute: "/login",
              router: "Log in",
            ),
          ],
        ),
      ),
    );
  }
}
