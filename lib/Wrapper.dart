import 'package:fireprediction/screens/auth/auth.dart';
import 'package:fireprediction/screens/auth/login.dart';
import 'package:fireprediction/screens/auth/register.dart';
import 'package:fireprediction/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {

  bool user = false;


  @override
  Widget build(BuildContext context) {
    return user? Home() : Auth();
  }
}
