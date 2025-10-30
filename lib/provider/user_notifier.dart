import 'package:flutter/material.dart';
import 'package:medicall/data/dummy_user_details.dart';
import 'package:medicall/model/user_detail.dart';
import 'package:medicall/snackbar_services.dart';

class  UserNotifier extends ChangeNotifier {
UserDetail? loggedInUser;


void login(String email, String password, BuildContext context) async{

  //Validate user input

  Future.delayed(Duration(seconds: 2));

  loggedInUser = USER_DETAILS[0];

  for(var userDetail in USER_DETAILS) {
    if(userDetail.email == email && userDetail.password == password) {
      loggedInUser = userDetail;
      Navigator.of(context).pushReplacementNamed("/home");
    } else{
      SnackbarServices.showSnackBar(context, "Wrong credentials");
    }
  }

  notifyListeners();
}

void signup(String username, String email, BuildContext context) {
  loggedInUser = UserDetail(name: username, email: email, profilePicture: "", password: "");
  USER_DETAILS.add(loggedInUser!);
  Navigator.pushReplacementNamed(context, "/validate");

  notifyListeners();
}
}