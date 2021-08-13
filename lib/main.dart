import 'package:flutter/material.dart';
import 'package:web_media_monitoring/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Monitoring',
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}
