import 'package:fireprediction/screens/auth/auth.dart';
import 'package:fireprediction/screens/auth/login.dart';
import 'package:fireprediction/screens/auth/register.dart';
import 'package:fireprediction/screens/home/home.dart';
import 'package:fireprediction/services/databaseservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

class Wrapper extends StatelessWidget {

  bool user = false;


  @override
  Widget build(BuildContext context) {

    final user2 = Provider.of<User>(context);
    if(user2 == null){
      print("Inside Wrapper NULL");

    }else{
      print("Inside Wrapper "+user2.toString());

    }

    //final user1 = "";
    //DatabaseService _databaseService = DatabaseService(user:user1);



    return user2!=null? Home(user: user2) : Auth();
  }
}
