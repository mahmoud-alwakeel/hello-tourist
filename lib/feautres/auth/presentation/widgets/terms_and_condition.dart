import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_strings.dart';
import 'package:hello_tourist/feautres/auth/presentation/widgets/custom_check_box.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppStrings.iHaveAgreeToOur,
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}