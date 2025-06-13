import 'package:book_store/core/theming/assets_manager.dart';
import 'package:book_store/core/theming/colors.dart';
import 'package:book_store/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageAndTextOnboarding extends StatelessWidget {
  const CustomImageAndTextOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(
              AssetsManager.onboarding1,
              height: 350.h,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            'Your book is here',
            style: TextStyles.font30LightSecondary700Wieght,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
