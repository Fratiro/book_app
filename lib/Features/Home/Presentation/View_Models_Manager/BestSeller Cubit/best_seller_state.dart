part of 'best_seller_cubit.dart';

abstract class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

class BestSellerInitial extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerSuccess extends BestSellerState {
  final List<BookModel> books;
  //? l2eno bs list we7de ma fi ktir data w2ela kena a5adna el data 3l cubit
  const BestSellerSuccess(this.books);
}

class BestSellerFailure extends BestSellerState {
  final String errorMessage;

  const BestSellerFailure(this.errorMessage);
}
