import 'package:book_app/Core/Errors/failures.dart';
import 'package:book_app/Features/Home/Data/Model/book_model/book_model.dart';
import 'package:book_app/Features/Home/Data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../Core/Utilities/api_service.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService apiService;

  HomeRepoImple(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&subject=&q=Programming");

      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
