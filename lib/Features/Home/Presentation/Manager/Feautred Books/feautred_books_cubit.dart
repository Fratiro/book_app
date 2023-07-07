import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/Domain/Use%20Case/fetch_featured_books_uscase.dart';
import 'package:equatable/equatable.dart';

import '../../../Domain/Entities/book_entity.dart';

part 'feautred_books_state.dart';

class FeautredBooksCubit extends Cubit<FeautredBooksState> {
  FeautredBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FeautredBooksInitial());

  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeautredBooksLoading());
    var result = await fetchFeaturedBooksUseCase.call();
    result.fold((failure) {
      emit(
          FeautredBooksFailure(failure.message, errorMessage: failure.message));
    }, (books) {
      emit(FeautredBooksSuccess(books));
    });
  }
}
