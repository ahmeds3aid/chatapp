import 'package:chatapp/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpButton extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  const SignUpButton({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.passwordController,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Sign Up",
      func: () {
        if (nameController.text.isEmpty) {
          displayToastMessage("Name is required", context);
        } else if (!emailController.text.contains('@')) {
          displayToastMessage("Email address is not valid", context);
        } else if (phoneController.text.isEmpty ||
            phoneController.text.length < 10) {
          displayToastMessage("Enter a valid phone number", context);
        } else if (passwordController.text.isEmpty) {
          displayToastMessage("Password is mandatory", context);
        } else {
          onSuccess();
        }
      },
    );
  }
}

// Toast message function
void displayToastMessage(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
