import 'package:book_store/core/theming/assets_manager.dart';
import 'package:book_store/core/theming/colors.dart';
import 'package:book_store/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 96.h,
            ),
            SvgPicture.asset(AssetsManager.svgLogoAndName),
            SizedBox(
              height: 96.h,
            ),
            Text('Choose, and Buy \nBooks with Ease',
                style: TextStyles.font31Primary700Wieght),
            SizedBox(
              height: 200.h,
            ),
            TextButton(
              onPressed: () {},
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
            ),
            SizedBox(
              height: 45.h,
            ),
          ],
        ),
      ),
    );
  }
}
