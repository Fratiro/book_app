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
          children: [
            CustomTextField(),
            SizedBox(height: 16),
            SearchListView(),
          ],
        ),
      ),
    );
  }
}
