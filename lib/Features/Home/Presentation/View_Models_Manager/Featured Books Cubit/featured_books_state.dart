part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
 //? l2eno bs list we7de ma fi ktir data w2ela kena a5adna el data 3l cubit
  const FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksFailure(this.errorMessage);
}
