// main.dart
import 'package:ui_company_profile/login.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Mulai dengan halaman login
    );
  }
}
