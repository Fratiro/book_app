import 'package:book_app/Core/Errors/failures.dart';
import 'package:book_app/Features/Home/Data/Data%20Sources/home_local_data_source.dart';
import 'package:book_app/Features/Home/Data/Data%20Sources/home_remote_data_source.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:book_app/Features/Home/Domain/Repostries/home_repo_.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplm extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImplm(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;

      books = homeLocalDataSource.fetchFeaturedBooks();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();

      return right(books);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioException(ex));
      }
      return left(ServerFailure(ex.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;

      books = homeLocalDataSource.fetchNewestBooks();

      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();

      return right(books);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioException(ex));
      }
      return left(ServerFailure(ex.toString()));
    }
  }
}
