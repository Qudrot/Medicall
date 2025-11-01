import 'package:flutter/material.dart';
import 'package:medicall/data/dummy_user_details.dart';
import 'package:medicall/model/user_detail.dart';
import 'package:medicall/snackbar_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class  UserCubit extends Cubit<UserDetail?> {
  UserCubit(): super(null);
  UserDetail? loggedInUser;

void login(BuildContext context,String email, String password) async{

  //Validate user input

  Future.delayed(Duration(seconds: 2));


  for(var userDetail in USER_DETAILS) {
    if(userDetail.email == email && userDetail.password == password) {

      emit(userDetail);
      Navigator.of(context).pushReplacementNamed("/home");
    } else{
      SnackbarServices.showSnackBar(context, "Wrong credentials");
    }
  }
}


void signup(String username, String email, BuildContext context) {
  loggedInUser = UserDetail(name: username, email: email, profilePicture: "", password: "");
  USER_DETAILS.add(loggedInUser!);
  Navigator.pushReplacementNamed(context, "/validate");
}
}