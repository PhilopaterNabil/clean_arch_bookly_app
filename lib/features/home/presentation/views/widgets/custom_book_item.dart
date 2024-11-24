import 'package:clean_arch_bookly_app/core/utils/asssets.dart';
import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Asssets.kBookImage),
          ),
          borderRadius: BorderRadius.circular(16.r),
          color: ColorManager.whiteColor,
        ),
      ),
    );
  }
}
