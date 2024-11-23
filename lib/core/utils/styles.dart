import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:clean_arch_bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle font14RegularWhite = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: ColorManager.whiteColor.withOpacity(0.5),
  );

  static TextStyle font14MediumWhite = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorManager.whiteColor.withOpacity(0.7),
  );

  static TextStyle font14SemiBoldWhite = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: ColorManager.whiteColor,
  );

  static TextStyle font16MediumWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorManager.whiteColor,
  );

  static TextStyle font18MediumWhite = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: ColorManager.whiteColor.withOpacity(0.7),
  );

  static TextStyle font18SemiBoldWhite = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: ColorManager.whiteColor,
  );

  static TextStyle font18BoldWhite = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: ColorManager.whiteColor,
  );

  static TextStyle font20RegularWhite = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
    color: ColorManager.whiteColor,
    fontFamily: Constants.kGtSectraFine,
  );

  static TextStyle font20BoldWhite = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: ColorManager.whiteColor,
  );

  static TextStyle font30RegularWhite = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.normal,
    color: ColorManager.whiteColor,
  );
}
