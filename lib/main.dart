import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const NoticeBoardApp());
}

class NoticeBoardApp extends StatelessWidget {
  const NoticeBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community Notice Board',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(), // Start at Splash
    );
  }
}
