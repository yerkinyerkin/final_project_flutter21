import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/presentation/wrapper.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
          debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}

