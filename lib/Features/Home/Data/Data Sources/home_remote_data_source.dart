import 'package:book_app/Core/Utilities/api_service.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:book_app/constants.dart';

import '../../../../Core/Utilities/Functions/get_books_list.dart';
import '../../../../Core/Utilities/Functions/save_box.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}");

    List<BookEntity> books = getBooksList(data);
    saveData(books: books, boxName: kHivefeaturedBoxName);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=programming");

    List<BookEntity> books = getBooksList(data);
    saveData(books: books, boxName: kHiveNewestBoxName);
    return books;
  }
}




