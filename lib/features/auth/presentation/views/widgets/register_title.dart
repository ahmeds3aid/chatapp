import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class RegisterTitle extends StatelessWidget {
  const RegisterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Register To New Account',
      style: Styles.textStyle24,
    );
  }
}