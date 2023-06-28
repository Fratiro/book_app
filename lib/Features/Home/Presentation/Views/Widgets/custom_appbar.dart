import 'package:flutter/material.dart';
import '../../../../../Core/Utilities/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(ProjectAssets.logo, height: 40),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 32),
          )
        ],
      ),
    );
  }
}
