import 'package:flutter/material.dart';
import 'package:hello_tourist/core/utils/assets.dart';

void main() {
  runApp(const HelloTourist());
}

class HelloTourist extends StatelessWidget {
  const HelloTourist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Image.asset(Assets.assetsImagesOnboardingOne),
      ),
    );
  }
}