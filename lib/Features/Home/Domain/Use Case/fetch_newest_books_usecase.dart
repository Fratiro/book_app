import 'package:book_app/Core/Errors/failures.dart';
import 'package:book_app/Core/use_case.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:book_app/Features/Home/Domain/Repostries/home_repo_.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
