import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_colors.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';

class AppMainButton extends StatelessWidget {
  const AppMainButton({super.key, this.color, required this.title});

  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color?? AppColors.primaryColor,
          foregroundColor: AppColors.offWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          title,
          style: CustomTextStyles.poppins500style18.copyWith(color: AppColors.offWhite),
        ),
      ),
    );
  }
}
