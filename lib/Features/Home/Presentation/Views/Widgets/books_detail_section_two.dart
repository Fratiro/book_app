import 'package:book_app/Features/Home/Presentation/Views/Widgets/similar_book_listview.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utilities/styles.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You can also see", style: Styles.textStyle18),
        SizedBox(height: 16),
        SimilarBooksListView(),
        SizedBox(height: 30)
      ],
    );
  }
}
