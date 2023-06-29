import 'package:book_app/Core/Utilities/styles.dart';
import 'package:book_app/Features/Home/Presentation/Views/Widgets/card_item_list_view.dart';
import 'package:book_app/Features/Home/Presentation/Views/Widgets/rating_bar.dart';
import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const AppBarBookDetails(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 24),
            child: const BookCardItemInListView(),
          ),
          Text(
            "Book Name Here",
            style: Styles.textStyle30.copyWith(fontFamily: kFontGTSecrat),
          ),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Bookly Here",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 16),
          const SizedBox(width: 112, child: RatingWidget()),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        r"$ 19.99",
                        style: Styles.textStyle16.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 0.5),
                Expanded(
                  child: Container(
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Free Preview",
                        style: Styles.textStyle14.copyWith(
                            color: kPrimeryColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also see", style: Styles.textStyle18),
          ),
        ],
      ),
    );
  }
}

class AppBarBookDetails extends StatelessWidget {
  const AppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close, size: 32),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag, size: 32),
        )
      ],
    );
  }
}
