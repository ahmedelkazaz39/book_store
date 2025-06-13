import 'package:book_store/core/helpers/extension.dart';
import 'package:book_store/core/theming/colors.dart';
import 'package:book_store/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingTextButton extends StatelessWidget {
  const OnboardingTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushReplacementNamed('/authOnboardingScreen');
      },
      child: Container(
        width: double.infinity,
        height: 48.h,
        decoration: BoxDecoration(
          color: ColorManager.primaryColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: TextStyles.font24LightSecondary700Wieght,
          ),
        ),
      ),
    );
  }
}
