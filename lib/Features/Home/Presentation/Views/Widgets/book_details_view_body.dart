import 'package:flutter/material.dart';
import 'bookdetail_appbar.dart';
import 'books_detail_sectio_one.dart';
import 'books_detail_section_two.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                AppBarBookDetails(),
                SectionOne(),
                Expanded(
                  child: SizedBox(height: 32),
                ),
                SectionTwo()
              ],
            ),
          ),
        )
      ],
    );
  }
}
