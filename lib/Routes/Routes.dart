
import 'package:go_router/go_router.dart';
import '../Screens/Home.dart';

class Routes {

  static final GoRouter routes = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          name: Navigation.home.name,
          path: '/',
          builder: (context, state) => const Home(),
        )
      ]
  );
}

enum Navigation {
  home
}