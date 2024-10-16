import 'package:chatapp/core/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final TextEditingController nameController;
  const NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return customText(
      type: TextInputType.name, 
      label: "Enter Your Name",
      hint: "Your name",
      prefix: Icons.person_outline, 
      controller: nameController,
      validate: (value) {
        if (value!.isEmpty) {
          return "Name must not be empty"; 
        } else {
          return null;
        }
      },
    );
  }
}