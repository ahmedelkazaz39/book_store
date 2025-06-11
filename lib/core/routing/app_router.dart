import 'package:book_store/core/routing/routes.dart';
import 'package:book_store/features/login/ui/login_screen.dart';
import 'package:book_store/features/onboarding_screen/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Center(child: Text('Not Found')));
    }
  }
}
