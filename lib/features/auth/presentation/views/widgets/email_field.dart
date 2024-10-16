import 'package:chatapp/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return customText(
        type: TextInputType.emailAddress,
        label: "Enter Your Email",
        hint: "your email",
        prefix: Icons.email_outlined,
        controller: emailController,
        validate: (value) {
          if (value!.isEmpty) {
            return "Email must not be empty";
          } else {
            return null;
          }
        });
  }
}
