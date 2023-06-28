import 'package:book_app/Core/Utilities/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_appbar.dart';
import 'list_view_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FuturedBooksListView(),
              SizedBox(height: 40),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text("Best Seller", style: Styles.textStyle18)),
              SizedBox(height: 30),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
