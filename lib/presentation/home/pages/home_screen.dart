import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          child: Text('Home', style: TextStyle(color: Colors.black),),
          color: Colors.white,
        ),
      ),
    );
  }
}
