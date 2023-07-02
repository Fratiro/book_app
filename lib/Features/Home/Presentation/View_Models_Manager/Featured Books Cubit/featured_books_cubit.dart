import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/Data/Repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../Data/Model/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
