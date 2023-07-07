import 'package:book_app/Features/Home/Presentation/Views/Widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utilities/styles.dart';
import '../../../../../constants.dart';
import 'action_buttons_section.dart';
import 'card_item_list_view.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 16),
          child: const BookCardItemInListView(image: ""),
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
        const SizedBox(
          width: 112,
          child: RatingWidget(),
        ),
        const SizedBox(height: 24),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ActionButtonSection()),
      ],
    );
  }
}
