import 'package:bloc/bloc.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    // final result = await fetchFeaturedBooksUseCase.call(NoParam());
    // result.fold((failure) => emit(FeaturedBooksFailure(failure.errMessage)),
    //     (books) => emit(FeaturedBooksSuccess(books)));
  }
}
