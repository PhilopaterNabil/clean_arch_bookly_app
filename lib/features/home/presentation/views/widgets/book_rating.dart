import 'package:clean_arch_bookly_app/core/helpers/spacing.dart';
import 'package:clean_arch_bookly_app/core/utils/color_manager.dart';
import 'package:clean_arch_bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: ColorManager.yellowColor,
        ),
        horizontalSpace(6),
        Text(
          '4.8',
          style: Styles.font16MediumWhite,
        ),
        horizontalSpace(5),
        Text(
          '(2390)',
          style: Styles.font14RegularWhite,
        ),
      ],
    );
  }
}
