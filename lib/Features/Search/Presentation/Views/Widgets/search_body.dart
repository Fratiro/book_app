import 'package:book_app/Core/Utilities/styles.dart';
import 'package:book_app/Features/Search/Presentation/Views/Widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            CustomTextField(),
            SizedBox(height: 16),
            Text(
              "Search Result",
              style: Styles.textStyle18,
            ),
            SizedBox(height: 16),
            SearchListView(),
          ],
        ),
      ),
    );
  }
}
