import 'package:chatapp/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;
  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Login in",
      func: () {
        if (!emailController.text.contains('@')) {
          displayToastMessage("Email address is not valid", context);
        } else if (passwordController.text.isEmpty) {
          displayToastMessage("password is mandatory", context);
        } else {
          onSuccess;
        }
      },
    );
  }
}

displayToastMessage(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
