import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/presentation/auth/pages/sign_in.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: ElevatedButton(
          child: Text('Sign In'),
          onPressed: (
            
          ) {
            Navigator.push(
              context, 
            MaterialPageRoute(builder:(context) => LoginScreen()));// Navigate to second route when tapped.
          },
        ),
        ),
      ),
    );
  }
}
