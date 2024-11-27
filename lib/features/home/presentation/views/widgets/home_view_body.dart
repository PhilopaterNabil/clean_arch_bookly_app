import 'package:clean_arch_bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/custom_home_title.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widgets/featured_books_list_view_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FeaturedBooksCubit>(
      create: (context) => FeaturedBooksCubit()..fetchFeaturedBooks(),
      child: BlocProvider<NewestBooksCubit>(
        create: (context) => NewestBooksCubit()..fetchNewestBooks(),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHomeAppBar(),
                  FeaturedBooksListViewBlocConsumer(),
                  CustomHomeTitle(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: NewestBooksListViewBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}

class NewestBooksListViewBlocBuilder extends StatelessWidget {
  const NewestBooksListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return BestSellerListView(books: state.books);
        } else if (state is NewestBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewestBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
