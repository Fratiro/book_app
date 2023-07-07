import 'package:book_app/Core/Errors/failures.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //? What Will Happend Here ..

  // majbour li 7ayesta3mel el method fetch eno y3me returne
  // la object eza kl shi salim aw object eza la2
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
