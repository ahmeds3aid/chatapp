import 'package:chatapp/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/login_title.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/register_row.dart';
import 'package:chatapp/features/home/presentation/views/home_view.dart';
import 'package:chatapp/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              const SizedBox(height: 20),
              const LoginTitle(),
              const SizedBox(height: 20),
              EmailField(emailController: emailController),
              const SizedBox(height: 20),
              PasswordField(
                passwordController: passwordController,
                toogleVisibility: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                isPasswordVisibility: isPasswordVisible,
              ),
              const SizedBox(height: 20),
              LoginButton(
                emailController: emailController,
                passwordController: passwordController,
                onSuccess: () {
                 Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeView()),
                  );
                },
              ),
              const SizedBox(height: 20),
              const RegisterRow()
            ],
          ),
        ),
      ),
    );
  }
}
