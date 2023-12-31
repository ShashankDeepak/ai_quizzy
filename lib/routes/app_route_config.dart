import 'package:ai_quizzy/routes/app_router_names.dart';
import 'package:ai_quizzy/views/pages/home.dart';
import 'package:ai_quizzy/views/pages/landing_page.dart';
import 'package:ai_quizzy/views/pages/login.dart';
import 'package:ai_quizzy/views/pages/register.dart';
import 'package:go_router/go_router.dart';

class RouteConfig {
  static GoRouter returnRouter(bool isUserAuthenticated) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: RouteNames.landingPage,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/register',
          name: RouteNames.regsiterRouter,
          builder: (context, state) => Register(),
        ),
        GoRoute(
          path: '/login',
          name: RouteNames.loginRouter,
          builder: (context, state) => Login(),
        ),
        GoRoute(
          path: '/home',
          name: RouteNames.homeRouter,
          builder: (context, state) => HomePage(),
        ),
      ],
    );
    return router;
  }
}
