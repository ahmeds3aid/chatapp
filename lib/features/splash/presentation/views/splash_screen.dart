import 'dart:async';
import 'package:chatapp/core/thems/colop_app.dart';
import 'package:chatapp/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset("assets/images/logo 1.png"),
            // SvgPicture.asset(AssetImages.logo),
            const Text('whatsapp', style: TextStyle(color: ColorApp.primarycolor,)),
            const SizedBox(
              height: 200,
            ),
            const Text('the best chat app in the centurt'),
          ],
        ),
      ),
    );
  }
}
