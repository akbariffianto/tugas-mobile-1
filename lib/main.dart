import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Menu App',
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color(0xFFFFE8B6),
      ),
      home: LoginPage(),
    );
  }
}
