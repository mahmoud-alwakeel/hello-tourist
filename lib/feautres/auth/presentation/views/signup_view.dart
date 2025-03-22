import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_strings.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';
import 'package:hello_tourist/core/widgets/app_main_button.dart';
import 'package:hello_tourist/feautres/auth/presentation/widgets/custom_text_field.dart';
import 'package:hello_tourist/feautres/auth/presentation/widgets/have_an_account.dart';
import 'package:hello_tourist/feautres/auth/presentation/widgets/terms_and_condition.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 152,
              ),
              Text(
                AppStrings.welcome,
                style: CustomTextStyles.poppins600style28,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 26,
              ),
              const CustomTextField(
                label: AppStrings.fristName,
              ),
              const CustomTextField(
                label: AppStrings.lastName,
              ),
              const CustomTextField(
                label: AppStrings.emailAddress,
              ),
              const CustomTextField(
                label: AppStrings.password,
              ),
              const TermsAndCondition(),
              const SizedBox(
                height: 88,
              ),
              AppMainButton(
                title: AppStrings.signUp,
                onPressed: () {},
              ),
              const HaveAnAccount()
            ],
          ),
        ),
      ),
    );
  }
}
