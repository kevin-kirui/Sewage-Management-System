import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(SewageManagementApp());
}

class SewageManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NSMS',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
