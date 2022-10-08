import 'package:e_learning/Screens/Startpage.dart';
import 'package:e_learning/Screens/login.dart';
import 'package:e_learning/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Start();
  }
}
