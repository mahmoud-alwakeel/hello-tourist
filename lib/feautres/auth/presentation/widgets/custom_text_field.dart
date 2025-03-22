
import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_colors.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 8.0, right: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: CustomTextStyles.poppins400style12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: AppColors.grey),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: AppColors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: AppColors.grey),
          ),
        ),
      ),
    );
  }
}