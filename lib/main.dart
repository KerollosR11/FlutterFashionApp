import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/category_screen.dart';
import 'package:flutter_application_1/screens/category_second_screen.dart';
import 'package:flutter_application_1/screens/landing_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';
import 'package:flutter_application_1/screens/successful_screen.dart';
// import 'package:flutter_application_1/widgets/pics/pics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandingScreen(),
    );
  }
}
