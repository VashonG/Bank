import 'package:cred/app_theme.dart';
import 'package:cred/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cred',
      theme: AppTheme.appTheme,
      home: const HomeScreen(),
    );
  }
}
