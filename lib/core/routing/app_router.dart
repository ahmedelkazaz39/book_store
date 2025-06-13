import 'package:book_store/core/routing/routes.dart';
import 'package:book_store/features/login/ui/login_screen.dart';
import 'package:book_store/features/onboarding_screen/ui/auth_onboarding_screen.dart';
import 'package:book_store/features/onboarding_screen/ui/onboarding_screen.dart';
import 'package:book_store/features/signUp/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      case Routes.authOnboarding:
        return MaterialPageRoute(builder: (context) => AuthOnboardingScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Center(child: Text('Not Found')));
    }
  }
}
