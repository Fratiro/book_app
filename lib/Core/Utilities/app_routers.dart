import 'package:book_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouters {
//? Routes constants
  static const kRouteSplashView = "/";
  static const kRouteHomeView = "/HomeView";

//? GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kRouteSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kRouteHomeView,
        builder: (context, state) => const HomaView(),
      ),
    ],
  );
}
