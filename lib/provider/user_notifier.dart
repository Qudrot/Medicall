import 'package:flutter/material.dart';
import 'package:medicall/data/dummy_user_details.dart';
import 'package:medicall/model/user_detail.dart';

class  Usernotifier extends ChangeNotifier {
UserDetail? loggedInUser;


void login(String email, String password) async{
  Future.delayed(Duration(seconds: 2));

  loggedInUser = USER_DETAILS[0];

  notifyListeners();
}

void signup(String username, String email, BuildContext context) {
  loggedInUser = UserDetail(name: username, email: email, profilePicture: "");
  USER_DETAILS.add(loggedInUser!);
  Navigator.pushReplacementNamed(context, "/home");

  notifyListeners();
}
}