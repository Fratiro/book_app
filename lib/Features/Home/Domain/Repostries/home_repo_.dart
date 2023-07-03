import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';

abstract class HomeRepo {
  //? What Will Happend Here ..
  Future<List<BookEntity>> fetchFeaturedBookds();
  Future<List<BookEntity>> fetchNewestBookds();
}
