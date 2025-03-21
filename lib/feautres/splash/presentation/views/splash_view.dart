import 'package:flutter/material.dart';
import 'package:hello_tourist/core/database/cache/cahce_helper.dart';
import 'package:hello_tourist/core/functions/navigation.dart';
import 'package:hello_tourist/core/services/service_locator.dart';
import 'package:hello_tourist/core/utils/app_strings.dart';
import 'package:hello_tourist/core/utils/app_text_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnboardingDone = getIt<CacheHelper>().getData(key: "isOnboardingDone") ?? false;
    if (isOnboardingDone) {
    delayedNavigation('/signup');
    } else {
    delayedNavigation('/onboarding');
    }
    super.initState();
  }

  void delayedNavigation(String path) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        customPushReplacement(context, path);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}
