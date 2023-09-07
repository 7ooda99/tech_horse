import 'package:flutter/material.dart';
import 'package:tech_horse/features/auth/presentation/login_screen.dart';
import 'package:tech_horse/features/auth/presentation/otp_screen.dart';
import 'package:tech_horse/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: getApplicationTheme(),
      home: OTPScreen(),
    );
  }
}
