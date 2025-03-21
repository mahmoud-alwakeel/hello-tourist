import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';

class OnboardingNavBar extends StatelessWidget {
  const OnboardingNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Skip',
        style: CustomTextStyles.poppins300style16
            .copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
