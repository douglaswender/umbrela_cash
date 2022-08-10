import 'package:go_router/go_router.dart';
import 'package:umbrela_cash/src/modules/login/presentation/login_page.dart';

import '../../src/modules/home/presentation/home_page.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) {
          final isAdmin = state.extra as bool?;
          return MyHomePage(
            title: 'title',
            isAdmin: isAdmin ?? false,
          );
        },
      )
    ],
  );

  static get informationProvider => router.routeInformationProvider;

  static get informationParser => router.routeInformationParser;

  static get delegate => router.routerDelegate;
}
