import 'package:clean_arch_bookly_app/core/helpers/spacing.dart';
import 'package:clean_arch_bookly_app/core/utils/styles.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsTiltleAndSubtitle extends StatelessWidget {
  const CustomBookDetailsTiltleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The Jungle Book',
          style: Styles.font30BoldWhite,
        ),
        verticalSpace(6),
        Text(
          'Rudyard Kipling',
          style: Styles.font18MediumWhite,
        ),
        verticalSpace(16),
        const BookRating(),
      ],
    );
  }
}
