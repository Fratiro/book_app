import '../../../Features/Home/Data/Model/book_model/book_model.dart';
import '../../../Features/Home/Domain/Entities/book_entity.dart';

List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books = [];

  for (var bookMap in data["items"]) {
    books.add(BookModel.fromJson(bookMap));
  }

  return books;
}