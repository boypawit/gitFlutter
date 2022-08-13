import 'package:flutter/material.dart';
import 'package:moneycath/page/Splash_page.dart';
import 'package:moneycath/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAFT MONEY',
      theme: ThemeData(
          fontFamily: "itim",
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.white),
      home: SpalshPage(),
    );
  }
}
