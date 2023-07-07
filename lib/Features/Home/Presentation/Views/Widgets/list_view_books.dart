import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'card_item_list_view.dart';

class FuturedBooksListView extends StatelessWidget {
  const FuturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: BookCardItemInListView(
                image: books[index].image ?? "",
              ),
            );
          },
        ),
      ),
    );
  }
}
