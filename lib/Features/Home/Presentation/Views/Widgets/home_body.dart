import 'package:flutter/material.dart';

import 'card_item_list_view.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), BookCardItemInListView()],
    );
  }
}
