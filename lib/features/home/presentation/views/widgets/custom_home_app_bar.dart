import 'package:clean_arch_bookly_app/core/utils/asssets.dart';
import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
