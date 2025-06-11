import 'package:book_store/core/helpers/extension.dart';
import 'package:book_store/core/theming/assets_manager.dart';
import 'package:book_store/core/theming/colors.dart';
import 'package:book_store/core/theming/text_styles.dart';
import 'package:book_store/features/onboarding_screen/ui/widgets/onboarding_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondaryColor,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 46.h),
                  SvgPicture.asset(
                    AssetsManager.svgLogoAndName,
                  ),
                  SizedBox(height: 96.h),
                  Text(
                    'Choose, and Buy \nBooks with Ease',
                    textAlign: TextAlign.center,
                    style: TextStyles.font31Primary700Wieght,
                  ),
                  SizedBox(height: 200.h),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 45.h),
            child: const OnboardingTextButton(),
          ),
        ],
      ),
    );
  }
}
