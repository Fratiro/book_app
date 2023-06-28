import 'package:book_app/Core/Utilities/assets.dart';
import 'package:book_app/Core/Utilities/styles.dart';
import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'list_view_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FuturedBooksListView(),
        SizedBox(height: 40),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text("Best Seller", style: Styles.textStyle18)),
        BestSellerItem()
      ],
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 1.3 / 2,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    ProjectAssets.testImage,
                    fit: BoxFit.fill,
                  ))),
        ],
      ),
    );
  }
}
