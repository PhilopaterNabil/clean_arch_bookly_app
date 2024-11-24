import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:clean_arch_bookly_app/core/utils/styles.dart';
import 'package:clean_arch_bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsAction extends StatelessWidget {
  const BookDetailsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 48.h,
          width: 150.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              bottomLeft: Radius.circular(16.r),
            ),
            color: ColorManager.whiteColor,
          ),
          child: Text(
            '19.99 €',
            style: Styles.font18BoldBlack,
          ),
        ),
        const CustomButton(),
      ],
    );
  }
}