import 'package:clean_arch_bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: 224.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: const CustomBookImageLoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
