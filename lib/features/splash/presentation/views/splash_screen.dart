import 'dart:async';
import 'package:chatapp/core/constans/asset_images.dart';
import 'package:chatapp/core/themes/styles.dart';
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
              height: 100,
            ),
            Image.asset(AssetImages.logopng,width: 180,height: 180,),
            // SvgPicture.asset(AssetIcons.logo),
             Text('WhatsUp', style: Styles.textStyle10),
            const SizedBox(
              height: 160,
            ),
             Text('the best chat app in this century',style: Styles.textStyle24,),
          ],
        ),
      ),
    );
  }
}
