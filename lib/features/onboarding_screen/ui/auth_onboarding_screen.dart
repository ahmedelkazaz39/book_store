import 'package:book_store/core/helpers/extension.dart';
import 'package:book_store/core/theming/colors.dart';
import 'package:book_store/core/theming/text_styles.dart';
import 'package:book_store/features/onboarding_screen/ui/widgets/custom_button.dart';
import 'package:book_store/features/onboarding_screen/ui/widgets/custom_image_and_text_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthOnboardingScreen extends StatelessWidget {
  const AuthOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.lightSecondaryColor,
      body: Column(
        children: [
          const CustomImageAndTextOnboarding(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            color: ColorManager.primaryColor,
                            text: 'Sign In',
                            style: TextStyles.font16LightSecondary700Wieght,
                            onTap: () {
                              context.pushNamed('/loginScreen');
                            },
                          ),
                        ),

                        SizedBox(width: 16.w), // Space between buttons
                        Expanded(
                          child: CustomButton(
                            color: ColorManager.lightSecondaryColor,
                            text: 'Sign Up',
                            style: TextStyles.font16Primary700Wieght,
                            onTap: () {
                              context.pushNamed('/signUpScreen');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h), // Space below buttons
              ],
            ),
          ),
        ],
      ),
    );
  }
}
