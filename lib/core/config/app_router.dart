import 'package:go_router/go_router.dart';

import '../../src/modules/home/presentation/home_page.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const MyHomePage(title: 'title');
        },
      )
    ],
  );

  static get informationProvider => router.routeInformationProvider;

  static get informationParser => router.routeInformationParser;

  static get delegate => router.routerDelegate;
}
