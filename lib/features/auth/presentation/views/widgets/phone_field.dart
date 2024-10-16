import 'package:chatapp/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneField({super.key,  required this.phoneController,});

  @override
  Widget build(BuildContext context) {
    return customText(
      type: TextInputType.phone, 
      label: "Enter Your phone",
      hint: "Your phone number",
      prefix: Icons.phone_outlined, 
      controller: phoneController,
      validate: (value) {
        if (value!.isEmpty) {
          return "Mobile number must not be empty"; 
        } else if (value.length < 10) {
          return "Enter a valid mobile number"; 
        } else {
          return null;
        }
      },
    );
  }
}
