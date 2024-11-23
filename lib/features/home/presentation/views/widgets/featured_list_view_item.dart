import 'package:clean_arch_bookly_app/core/utils/asssets.dart';
import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224.h,
      width: 150.w,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Asssets.kBookImage),
        ),
        borderRadius: BorderRadius.circular(16.r),
        color: ColorManager.whiteColor,
      ),
    );
  }
}
