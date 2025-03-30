import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hello_tourist/core/database/cache/cahce_helper.dart';
import 'package:hello_tourist/core/routes/app_router.dart';
import 'package:hello_tourist/core/services/service_locator.dart';
import 'package:hello_tourist/core/utils/app_colors.dart';
import 'package:hello_tourist/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  await getIt<CacheHelper>().init();
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
