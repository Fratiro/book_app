part of 'feautred_books_cubit.dart';

abstract class FeautredBooksState extends Equatable {
  const FeautredBooksState();

  @override
  List<Object> get props => [];
}

class FeautredBooksInitial extends FeautredBooksState {}

class FeautredBooksLoading extends FeautredBooksState {}

class FeautredBooksSuccess extends FeautredBooksState {
  final List<BookEntity> books;

  const FeautredBooksSuccess(this.books);
}

class FeautredBooksFailure extends FeautredBooksState {
  final String errorMessage;

  const FeautredBooksFailure(String message, {required this.errorMessage});
}
