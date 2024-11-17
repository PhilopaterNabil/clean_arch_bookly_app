import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 44.h),
      child: const Column(
        children: [
          CustomHomeAppBar(),
        ],
      ),
    );
  }
}
