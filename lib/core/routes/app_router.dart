import 'package:go_router/go_router.dart';
import 'package:hello_tourist/feautres/onboarding/presentation/views/onboarding_view.dart';
import 'package:hello_tourist/feautres/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: '/onboarding',
    builder: (context, state) => OnboardingView(),
  ),
]);
