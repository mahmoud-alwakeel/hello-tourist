import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_colors.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';
import 'package:hello_tourist/feautres/onboarding/data/models/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.pageController,
    this.onPageChanged,
  });

  final PageController pageController;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: 343,
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    onboardingList[index].image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: AppColors.deepBrown),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              onboardingList[index].title,
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins500style24
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              onboardingList[index].subTitle,
              style: CustomTextStyles.poppins300style16,
            ),
          ],
        ),
      ),
    );
  }
}
