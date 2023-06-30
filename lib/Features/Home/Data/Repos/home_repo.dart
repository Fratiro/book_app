import 'package:book_app/Core/Errors/failures.dart';
import 'package:book_app/Features/Home/Data/Model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  /// Fetches the best-selling books.
  ///
  /// Returns a [Future] that either resolves to [Either<Failure, List<BookModel>>]
  /// or throws an exception if an error occurs during the fetch process.
  ///
  /// On success, the [Future] resolves to a list of [BookModel] representing
  /// the best-selling books.
  ///
  /// On failure, the [Future] resolves to an [Either] object where the left side
  /// represents a [Failure] indicating the cause of the failure.

  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();

  /// Fetches the feature books.
  ///
  /// Returns a [Future] that either resolves to [Either<Failure, List<BookModel>>]
  /// or throws an exception if an error occurs during the fetch process.
  ///
  /// On success, the [Future] resolves to a list of [BookModel] representing
  /// the feature books.
  ///
  /// On failure, the [Future] resolves to an [Either] object where the left side
  /// represents a [Failure] indicating the cause of the failure.

  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}
