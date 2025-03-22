import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_colors.dart';
import 'package:hello_tourist/core/utils/app_strings.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppStrings.dontHaveAnAccount),
        TextButton(
          onPressed: () {},
          child: Text(
            AppStrings.signIn,
            style: TextStyle(color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}