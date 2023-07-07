import 'package:book_app/Features/Home/Presentation/Manager/Feautred%20Books/feautred_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_books.dart';

class FuturedBooksListViewBlocBuilder extends StatelessWidget {
  const FuturedBooksListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeautredBooksCubit, FeautredBooksState>(
      builder: (context, state) {
        if (state is FeautredBooksSuccess) {
          return FuturedBooksListView(
            books: state.books,
          );
        } else if (state is FeautredBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
