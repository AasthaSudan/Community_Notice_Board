import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use a gradient background for a fresh look
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Replace the icon with your custom logo if available
              Icon(
                Icons.notifications_active,
                size: 120,
                color: Colors.white.withOpacity(0.9),
              ),
              const SizedBox(height: 20),
              // Enhance the text with a glowing effect and elegant font styling
              Text(
                "Community Notice Board",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.9),
                  letterSpacing: 1.5,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              // Add a custom loader with a shimmer effect or a unique design
              CircularProgressIndicator(
                color: Colors.white.withOpacity(0.7),
                strokeWidth: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
