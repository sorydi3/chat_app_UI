import 'package:demo_app_1/screens/home_screen.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      accentColor: Color(0xFFFEF9EB),
      ),
      home: HomeScreen(),
    );
  }
}
