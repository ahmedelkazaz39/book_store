import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? color;
  final String? text;
  final TextStyle? style;
  const CustomButton(
      {super.key, this.onTap, this.color, this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
        ),
        child: Text(
          '$text',
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
