import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_tourist/core/functions/navigation.dart';
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
    delayedNavigation();
    super.initState();
  }

  void delayedNavigation() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        customPushReplacement(context, '/onboarding');
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
