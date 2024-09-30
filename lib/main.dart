import 'package:chatapp/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chatapp());
}

class Chatapp extends StatelessWidget {
  const Chatapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
  
}
