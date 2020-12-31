import 'package:flutter/material.dart';
import 'package:hce_app/HomeScreens/HomeScreen.dart';
void main() => runApp(HCEApp());

class HCEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

