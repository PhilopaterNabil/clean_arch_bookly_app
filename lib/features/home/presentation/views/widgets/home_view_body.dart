import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_home_title.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHomeAppBar(),
              FeaturedBooksListView(),
              CustomHomeTitle(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
