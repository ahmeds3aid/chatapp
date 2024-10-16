import 'package:chatapp/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final VoidCallback toogleVisibility;
  final bool isPasswordVisibility;
  const PasswordField({
    super.key,
    required this.passwordController,
    required this.toogleVisibility,
    required this.isPasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return customText(
        type: TextInputType.visiblePassword,
        label: "Enter Your Password",
        hint: "your password",
        controller: passwordController,
        prefix: Icons.lock,
        isObscure: !isPasswordVisibility,
        suffix: isPasswordVisibility ? Icons.visibility : Icons.visibility_off,
        pressed: toogleVisibility,
        validate: (value) {
          if (value!.isEmpty) {
            return "Password must not be empty";
          } else {
            return null;
          }
        });
  }
}
