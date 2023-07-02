import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../Data/Model/book_model/book_model.dart';
import '../../../Data/Repos/home_repo.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerLoading());
    var result = await homeRepo.fetchBestSellerBooks();

    result.fold((failure) {
      emit(BestSellerFailure(failure.errorMessage));
    }, (books) {
      emit(BestSellerSuccess(books));
    });
  }
}
