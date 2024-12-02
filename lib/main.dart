import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Routes/Routes.dart';
import 'package:navigation_2/Screens/AutoRedirect/AuthCubit.dart';
import 'Screens/TabBar/TabsCubit.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) =>
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(),
          ),
          BlocProvider<TabsCubit>(
            create: (context) => TabsCubit(),
          )
        ],
        child: MaterialApp.router(
            title: 'Navigator 2.0',
            theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
            routerConfig: Routes.routes
        ),
      );
}