import 'package:chatapp/features/auth/presentation/views/login_view.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/login_row.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/register_title.dart';
import 'package:chatapp/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
            children: [
              const LogoWidget(),
              const RegisterTitle(),
              const SizedBox(height: 20),
              NameField(nameController: nameController),
              const SizedBox(height: 20),
              EmailField(emailController: emailController),
              const SizedBox(height: 20),
              PhoneField(phoneController: phoneController),
              const SizedBox(height: 20),
              PasswordField(
                  passwordController: passwordController,
                  toogleVisibility: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  isPasswordVisibility: isPasswordVisible),
              const SizedBox(height: 20),
              SignUpButton(
                nameController: nameController,
                emailController: emailController,
                phoneController: phoneController,
                passwordController: passwordController,
                onSuccess: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
              ),
              const SizedBox(height: 20),
              const LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}
