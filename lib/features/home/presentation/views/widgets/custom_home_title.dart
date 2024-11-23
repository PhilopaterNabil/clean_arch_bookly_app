import 'package:clean_arch_bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeTitle extends StatelessWidget {
  const CustomHomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 50.h, bottom: 20.h),
      child: Text(
        'Best Seller',
        style: Styles.font18SemiBoldWhite,
      ),
    );
  }
}
