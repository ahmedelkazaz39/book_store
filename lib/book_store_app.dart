import 'package:book_store/core/routing/app_router.dart';
import 'package:book_store/core/routing/routes.dart';
import 'package:book_store/features/onboarding_screen/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookStore extends StatelessWidget {
  final AppRouter appRouter;
  const BookStore({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Book Store',
        onGenerateRoute: appRouter.generatorRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
