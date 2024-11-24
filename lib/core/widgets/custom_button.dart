import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:clean_arch_bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        fixedSize: Size(150.w, 48.h),
        backgroundColor: ColorManager.orangeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.r),
            bottomRight: Radius.circular(16.r),
          ),
        ),
      ),
      child: Text(
        'Free preview',
        style: Styles.font16BoldWhite,
      ),
    );
  }
}
