import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/app_colors.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';
import 'package:hello_tourist/core/utils/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key});
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: 343,
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Assets.assetsImagesOnboardingOne,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: AppColors.deepBrown),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Explore The history with Dalel in a smart way",
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins500style24
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Using our app’s history libraries you can find many historical periods ",
              style: CustomTextStyles.poppins300style16,
            ),
          ],
        ),
      ),
    );
  }
}
