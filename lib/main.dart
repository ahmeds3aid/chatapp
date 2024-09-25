import 'package:chatapp/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chatapp());
}

class Chatapp extends StatelessWidget {
  const Chatapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginView(),
    );
  }
  
}
