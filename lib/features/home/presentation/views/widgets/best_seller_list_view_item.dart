import 'package:clean_arch_bookly_app/core/helpers/spacing.dart';
import 'package:clean_arch_bookly_app/core/utils/app_router.dart';
import 'package:clean_arch_bookly_app/core/utils/asssets.dart';
import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:clean_arch_bookly_app/core/utils/styles.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsView),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SizedBox(
          height: 125.h,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Asssets.kBookImage),
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                    color: ColorManager.whiteColor,
                  ),
                ),
              ),
              horizontalSpace(30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.font20RegularWhite,
                      ),
                    ),
                    verticalSpace(3),
                    Text(
                      'J.K. Rowling',
                      style: Styles.font14MediumWhite,
                    ),
                    verticalSpace(3),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.font20BoldWhite,
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
