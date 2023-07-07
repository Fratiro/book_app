import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utilities/assets.dart';

class BookCardItemInListView extends StatelessWidget {
  const BookCardItemInListView({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: CachedNetworkImage(imageUrl: image , fit: BoxFit.fill,)
    );
  }
}
 