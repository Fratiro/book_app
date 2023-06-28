import 'package:flutter/material.dart';
import 'card_item_list_view.dart';

class FuturedBooksListView extends StatelessWidget {
  const FuturedBooksListView({super.key});

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
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: BookCardItemInListView(),
              );
            },
          )),
    );
  }
}
