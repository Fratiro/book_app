import 'package:flutter/material.dart';

import '../../../../../Core/Utilities/assets.dart';

class BookCardItemInListView extends StatelessWidget {
  const BookCardItemInListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(ProjectAssets.testImage),
              )),
        ),
      ),
    );
  }
}
