import 'package:chatapp/core/themes/color_app.dart';
import 'package:chatapp/core/themes/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  
  final double? fontSized;
  final String text;
  final VoidCallback func;
  
  final Widget? svgPicture;

  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    
    this.fontSized,
    required this.text,
    required this.func,
    
    this.svgPicture,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorApp.primarycolor,
            padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24)
            )
          ),
          child: Text(
            text,
            style: Styles.textStyle24.copyWith(
              color: textColor ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
