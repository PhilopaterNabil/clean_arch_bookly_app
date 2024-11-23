import 'package:clean_arch_bookly_app/core/utils/asssets.dart';
import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 24.w, right: 24.w, top: 44.h, bottom: 20.h),
      child: Row(
        children: [
          Image.asset(
            Asssets.logo,
            height: 18.h,
            width: 75.w,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: ColorManager.whiteColor,
              size: 24.sp,
            ),
          ),
        ],
      ),
    );
  }
}
