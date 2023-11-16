import 'package:gdsc_flutter/config/router/route_names.dart';
import 'package:go_router/go_router.dart';
import 'package:gdsc_flutter/screens/splash/splash_screen.dart';

import '../../screens/bottom_bar/bottom_bar_screen.dart';

// 도메인 설정
class AppRouter {
  static final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
            name: RouteNames.splash,
            path: '/',
            builder: (context, state) => SplashScreen(),
        ),
        GoRoute(
          name: RouteNames.bottomBar,
          path: '/' + RouteNames.bottomBar,
          builder: (context, state) => BottomBarScreen(),
        )
      ],
  );
}
