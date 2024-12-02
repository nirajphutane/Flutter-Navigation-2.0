
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Screens/AutoRedirect/AuthCubit.dart';
import 'package:navigation_2/Screens/AutoRedirect/AuthScreen.dart';
import 'package:navigation_2/Screens/Push&Pop/ChildReceiverScreen.dart';
import 'package:navigation_2/Screens/Push&Pop/SenderScreen.dart';
import 'package:navigation_2/Screens/TabBar/Tabs.dart';
import '../Screens/AnimationScreen.dart';
import '../Screens/CustomBack/ScreenA1.dart';
import '../Screens/CustomBack/ScreenB1.dart';
import '../Screens/Error/ErrorScreen.dart';
import '../Screens/Home.dart';
import '../Screens/Menus/Menus1.dart';
import '../Screens/Menus/Menus2.dart';
import '../Screens/Menus/Menus3.dart';
import '../Screens/Menus/Screen1.dart';
import '../Screens/Menus/Screen10.dart';
import '../Screens/Menus/Screen11.dart';
import '../Screens/Menus/Screen12.dart';
import '../Screens/Menus/Screen2.dart';
import '../Screens/Menus/Screen3.dart';
import '../Screens/Menus/Screen4.dart';
import '../Screens/Menus/Screen5.dart';
import '../Screens/Menus/Screen6.dart';
import '../Screens/Menus/Screen7.dart';
import '../Screens/Menus/Screen8.dart';
import '../Screens/Menus/Screen9.dart';
import '../Screens/Push&Pop/ReceiverScreen.dart';
import '../Screens/Push&Pop/ScreenA.dart';
import '../Screens/Push&Pop/ScreenB.dart';
import '../Screens/TabBar/Tab1.dart';
import '../Screens/TabBar/Tab2.dart';
import '../Screens/TabBar/Tab3.dart';
import '../Screens/TabBar/TabsCubit.dart';
import 'NavigatorObserver.dart';

class Routes {

  static final GoRouter routes = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
          name: Navigation.home.name,
          path: '/',
          builder: (context, state) => const Home(),
          routes: <RouteBase>[
            GoRoute(
                name: Navigation.auth.name,
                path: Navigation.auth.name,
                builder: (context, state) => const AuthScreen()
            ),
            GoRoute(
                name: Navigation.menus1.name,
                path: Navigation.menus1.name,
                builder: (context, state) => const Menus1(),
                routes: <RouteBase>[
                  GoRoute(
                      name: Navigation.screen1.name,
                      path: Navigation.screen1.name,
                      builder: (context, state) => const Screen1()
                  ),
                  GoRoute(
                      name: Navigation.screen2.name,
                      path: Navigation.screen2.name,
                      builder: (context, state) => const Screen2()
                  ),
                  GoRoute(
                      name: Navigation.screen3.name,
                      path: Navigation.screen3.name,
                      builder: (context, state) => const Screen3()
                  ),
                  GoRoute(
                      name: Navigation.screen4.name,
                      path: Navigation.screen4.name,
                      builder: (context, state) => const Screen4()
                  )
                ]
            ),
            GoRoute(
                name: Navigation.menus2.name,
                path: Navigation.menus2.name,
                builder: (context, state) => const Menus2(),
                routes: <RouteBase>[
                  GoRoute(
                      name: Navigation.screen5.name,
                      path: Navigation.screen5.name,
                      builder: (context, state) => const Screen5()
                  ),
                  GoRoute(
                      name: Navigation.screen6.name,
                      path: Navigation.screen6.name,
                      builder: (context, state) => const Screen6()
                  ),
                  GoRoute(
                      name: Navigation.screen7.name,
                      path: Navigation.screen7.name,
                      builder: (context, state) => const Screen7()
                  ),
                  GoRoute(
                      name: Navigation.screen8.name,
                      path: Navigation.screen8.name,
                      builder: (context, state) => const Screen8()
                  )
                ]
            ),
            GoRoute(
                name: Navigation.menus3.name,
                path: Navigation.menus3.name,
                builder: (context, state) => const Menus3(),
                routes: <RouteBase>[
                  GoRoute(
                      name: Navigation.screen9.name,
                      path: Navigation.screen9.name,
                      builder: (context, state) => const Screen9()
                  ),
                  GoRoute(
                      name: Navigation.screen10.name,
                      path: Navigation.screen10.name,
                      builder: (context, state) => const Screen10()
                  ),
                  GoRoute(
                      name: Navigation.screen11.name,
                      path: Navigation.screen11.name,
                      builder: (context, state) => const Screen11()
                  ),
                  GoRoute(
                      name: Navigation.screen12.name,
                      path: Navigation.screen12.name,
                      builder: (context, state) => const Screen12()
                  )
                ]
            ),
            GoRoute(
                name: Navigation.screenA.name,
                path: Navigation.screenA.name,
                builder: (context, state) => const ScreenA()
            ),
            GoRoute(
                name: Navigation.screenB.name,
                path: Navigation.screenB.name,
                builder: <Data>(context, state) => ScreenB(data: state.extra)
            ),
            GoRoute(
                name: Navigation.screenA1.name,
                path: Navigation.screenA1.name,
                builder: (context, state) => const ScreenA1()
            ),
            GoRoute(
                name: Navigation.screenB1.name,
                path: Navigation.screenB1.name,
                builder: <Data>(context, state) => ScreenB1(data: state.extra)
            ),
            StatefulShellRoute.indexedStack(
                builder: (context, state, navigationShell) => Tabs(navigationShell: navigationShell),
                branches: [
                  StatefulShellBranch(
                      routes: [
                        GoRoute(
                            name: Navigation.tab1.name,
                            path: Navigation.tab1.name,
                            builder: (context, state) => const Tab1()
                        )
                      ]
                  ),
                  StatefulShellBranch(
                      routes: [
                        GoRoute(
                            name: Navigation.tab2.name,
                            path: Navigation.tab2.name,
                            builder: (context, state) => BlocBuilder<TabsCubit, TabsState>(
                              buildWhen: (_, current) => current.canRebuild,
                              builder: (context, state) => Tab2(key: UniqueKey())
                            )
                        )
                      ]
                  ),
                  StatefulShellBranch(
                      routes: [
                        GoRoute(
                            name: Navigation.tab3.name,
                            path: Navigation.tab3.name,
                            builder: (context, state) => const Tab3()
                        )
                      ]
                  )
                ]
            ),
            GoRoute(
                name: Navigation.animatedScreen.name,
                path: Navigation.animatedScreen.name,
                pageBuilder: (context, state) => CustomTransitionPage(
                    key: state.pageKey,
                    child: const AnimationScreen(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) => RotationTransition(turns: animation, child: child)
                )
            ),
            GoRoute(
                name: Navigation.senderScreen.name,
                path: Navigation.senderScreen.name,
                builder: (context, state) => SenderScreen()
            ),
            GoRoute(
                name: Navigation.receiverScreenViaParameter.name,
                path: '${Navigation.receiverScreenViaParameter.name}/:param1/:param2',
                builder: (context, state) {
                  final int param1 = int.parse(state.pathParameters['param1']?? '-1');
                  final String param2 = state.pathParameters['param2'] ?? '';
                  return ReceiverScreen(param1: param1, param2: param2);
                },
                routes: <RouteBase> [
                  GoRoute(
                      name: Navigation.childReceiverScreenViaParameter.name,
                      path: '/${Navigation.childReceiverScreenViaParameter.name}/:paramA/:paramB',
                      builder: (context, state) {
                        final int paramA = int.parse(state.pathParameters['paramA']?? '-1');
                        final String paramB = state.pathParameters['paramB'] ?? '';
                        return ChildReceiverScreen(paramA: paramA, paramB: paramB);
                      },
                  )
                ]
            ),
            GoRoute(
                name: Navigation.receiverScreenViaQuery.name,
                path: Navigation.receiverScreenViaQuery.name,
                builder: (context, state) {
                  final int param1 = int.parse(state.uri.queryParameters['param1']?? '-1');
                  final String param2 = state.uri.queryParameters['param2'] ?? '';
                  return ReceiverScreen(param1: param1, param2: param2);
                },
                routes: <RouteBase> [
                  GoRoute(
                    name: Navigation.childReceiverScreenViaQuery.name,
                    path: Navigation.childReceiverScreenViaQuery.name,
                    builder: (context, state) {
                      final int paramA = int.parse(state.uri.queryParameters['paramA']?? '-1');
                      final String paramB = state.uri.queryParameters['paramB'] ?? '';
                      return ChildReceiverScreen(paramA: paramA, paramB: paramB);
                    },
                  )
                ]
            )
          ]
      )
    ],
    redirect: (final BuildContext context, final GoRouterState state) async {
      if (context.read<AuthCubit>().state is Logout) {
        return '/${Navigation.auth.name}';
      }
      return null;
    },
    errorBuilder: (context, state) => ErrorScreen(state.error?.message),
    observers: [
      AppNavigatorObserver()
    ]
  );
}

enum Navigation {
  auth,
  home,
  menus1,
  screen1,
  screen2,
  screen3,
  screen4,
  menus2,
  screen5,
  screen6,
  screen7,
  screen8,
  menus3,
  screen9,
  screen10,
  screen11,
  screen12,
  screenA,
  screenB,
  screenA1,
  screenB1,
  tabs,
  tab1,
  tab2,
  tab3,
  animatedScreen,
  senderScreen,
  receiverScreenViaParameter,
  receiverScreenViaQuery,
  childReceiverScreenViaParameter,
  childReceiverScreenViaQuery
}
