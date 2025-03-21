import 'package:hello_tourist/core/utils/assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

final List<OnboardingModel> onboardingList = [
  OnboardingModel(
    image: Assets.assetsImagesOnboardingOne,
    title: "Explore The history with Dalel in a smart way",
    subTitle:
        "Using our app’s history libraries you can find many historical periods",
  ),
  OnboardingModel(
    image: Assets.assetsImagesOnboardingTwo,
    title: "From every place on earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnboardingModel(
    image: Assets.assetsImagesOnboardingThree,
    title: "Using modern AI technology for better user experience",
    subTitle:
        "AI provide recommendations and helps you to continue the search journey",
  ),
];
