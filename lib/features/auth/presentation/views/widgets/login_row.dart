import 'package:chatapp/core/themes/styles.dart';
import 'package:chatapp/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
              );
            },
            child: Text(
              "Login here",
              style: Styles.textStyle10,
            ))
      ],
    );
  }
}
