import 'package:book_app/Core/Utilities/app_routers.dart';
import 'package:book_app/Features/Home/Presentation/Views/Widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utilities/assets.dart';
import '../../../../../Core/Utilities/styles.dart';
import '../../../../../constants.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kRouteBookDetailsView);
      },
      child: SizedBox(
        height: 124,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1.3 / 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  ProjectAssets.testImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      "Hello World this is test about Text spacing ",
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kFontGTSecrat),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "JR Rowling",
                        style: Styles.textStyle14
                            .copyWith(color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$ 19.99",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w900),
                      ),
                      const RatingWidget()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
