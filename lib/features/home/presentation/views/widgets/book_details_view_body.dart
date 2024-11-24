import 'package:clean_arch_bookly_app/core/helpers/spacing.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/book_details_action.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_details_image.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_book_details_tiltle_and_subtitle.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            verticalSpace(33),
            const CustomBookDetailsImage(),
            verticalSpace(40),
            const CustomBookDetailsTiltleAndSubtitle(),
            verticalSpace(30),
            const BookDetailsAction(),
            verticalSpace(36),
            const SimilarBooksListView(),
          ],
        ),
      ),
    );
  }
}
