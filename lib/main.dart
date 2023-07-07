import 'package:book_app/Core/Utilities/app_routers.dart';
import 'package:book_app/Core/Utilities/bloc_observer.dart';
import 'package:book_app/Features/Home/Data/Repostries/home_repo_implm.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:book_app/Features/Home/Domain/Use%20Case/fetch_featured_books_uscase.dart';
import 'package:book_app/Features/Home/Domain/Use%20Case/fetch_newest_books_usecase.dart';
import 'package:book_app/Features/Home/Presentation/Manager/Feautred%20Books/feautred_books_cubit.dart';
import 'package:book_app/Features/Home/Presentation/Manager/Newest%20Books/newest_books_cubit.dart';
import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'Core/Utilities/Functions/setu_service_locator.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocatorGetIt();
  await Hive.openBox<BookEntity>(kHivefeaturedBoxName);
  await Hive.openBox<BookEntity>(kHiveNewestBoxName);
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: kPrimeryColor,
        statusBarBrightness: Brightness.light,
        systemStatusBarContrastEnforced: false,
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeautredBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImplm>(),
              ),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(
                getIt.get<HomeRepoImplm>(),
              ),
            );
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimeryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
