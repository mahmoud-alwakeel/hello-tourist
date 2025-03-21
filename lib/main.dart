import 'package:flutter/material.dart';
import 'package:hello_tourist/core/routes/app_router.dart';
import 'package:hello_tourist/core/utils/app_colors.dart';


void main() {
  runApp(const HelloTourist());
}

class HelloTourist extends StatelessWidget {
  const HelloTourist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}