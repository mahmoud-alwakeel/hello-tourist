import 'package:go_router/go_router.dart';
import 'package:hello_tourist/feautres/auth/presentation/views/login_view.dart';
import 'package:hello_tourist/feautres/auth/presentation/views/signup_view.dart';
import 'package:hello_tourist/feautres/onboarding/presentation/views/onboarding_view.dart';
import 'package:hello_tourist/feautres/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignupView(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginView(),
    ),
  ],
);
