import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/myhomepage.dart';
import 'package:ui_design/nvpage.dart';

import 'package:ui_design/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}



// ignore: camel_case_types
