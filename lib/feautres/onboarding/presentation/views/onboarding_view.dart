import 'package:flutter/material.dart';
import 'package:hello_tourist/core/functions/navigation.dart';
import 'package:hello_tourist/core/utils/app_strings.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';
import 'package:hello_tourist/core/widgets/app_main_button.dart';
import 'package:hello_tourist/feautres/onboarding/data/models/onboarding_model.dart';
import 'package:hello_tourist/feautres/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:hello_tourist/feautres/onboarding/presentation/widgets/onboarding_nav_bar.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();
  int currentIndex = 0;

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
              const OnboardingNavBar(),
              OnboardingBody(
                pageController: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              const SizedBox(
                height: 44,
              ),
              OnboardingButtons(
                  pageController: _controller, currentIndex: currentIndex),
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

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({
    super.key,
    required this.pageController,
    required this.currentIndex,
  });

  final PageController pageController;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onboardingList.length - 1) {
      return AppMainButton(
        title: 'Next',
        onPressed: () {
          pageController.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.bounceInOut,
          );
        },
      );
    } else {
      return Column(
        children: [
          AppMainButton(
            title: AppStrings.createAccount,
            onPressed: () {
              customPushReplacement(context, '/signup');
            },
          ),
          TextButton(
            onPressed: () {
              customPushReplacement(context, '/login');
            },
            child: const Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16,
            ),
          ),
        ],
      );
    }
  }
}
