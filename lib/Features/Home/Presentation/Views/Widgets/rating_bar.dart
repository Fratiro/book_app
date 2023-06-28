import 'package:flutter/material.dart';

import '../../../../../Core/Utilities/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.star_rate,
          color: Colors.yellow,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 4, right: 5),
          child: Text(
            "4.8",
            style: Styles.textStyle18,
          ),
        ),
        Text(
          "(2365)",
          style:
              Styles.textStyle16.copyWith(color: Colors.white.withOpacity(0.4)),
        )
      ],
    );
  }
}
