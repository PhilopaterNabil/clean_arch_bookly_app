import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookDetailsImage extends StatelessWidget {
  const CustomBookDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 243.h,
      child: const CustomBookItem(),
    );
  }
}
