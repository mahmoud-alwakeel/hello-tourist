import 'package:flutter/material.dart';
import 'package:hello_tourist/core/widgets/app_main_button.dart';
import 'package:hello_tourist/feautres/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:hello_tourist/feautres/onboarding/presentation/widgets/onboarding_nav_bar.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              OnboardingNavBar(),
              OnboardingBody(),
              SizedBox(
                height: 88,
              ),
              AppMainButton(
                title: 'Next',
              ),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
