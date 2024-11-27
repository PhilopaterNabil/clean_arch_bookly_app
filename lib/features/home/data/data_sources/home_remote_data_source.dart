import 'package:clean_arch_bookly_app/core/utils/api_service.dart';
import 'package:clean_arch_bookly_app/core/utils/constants.dart';
import 'package:clean_arch_bookly_app/core/utils/functions/save_books.dart';
import 'package:clean_arch_bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService = ApiService();

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    final data = await apiService.get(
        endPoint:
            'volumes?q=subject:Programming&startIndex=${pageNumber * 10}');
    List<BookEntity> books = getBooksList(data);

    saveBooksData(books, Constants.kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    final data = await apiService.get(
        endPoint: 'volumes?Sorting=newest&q=subject:Programming&startIndex=0');
    List<BookEntity> books = getBooksList(data);

    saveBooksData(books, Constants.kNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
