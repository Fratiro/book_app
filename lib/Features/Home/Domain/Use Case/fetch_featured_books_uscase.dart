
import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:book_app/Features/Home/Domain/Repostries/home_repo_.dart';
import 'package:dartz/dartz.dart';

import '../../../../Core/Errors/failures.dart';
import '../../../../Core/use_case.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}


