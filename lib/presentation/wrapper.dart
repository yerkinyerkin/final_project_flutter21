import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/presentation/main/main_screen.dart';
import 'package:project/presentation/auth/pages/sign_in.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dynamic user = 'user';
    // final dynamic user = null;
    if(user == null) {
      return LoginScreen();
    }
    return MainScreen();
  }
}