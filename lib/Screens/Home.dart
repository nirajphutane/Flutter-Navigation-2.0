
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/AppScaffold.dart';
import 'package:navigation_2/Routes/Routes.dart';
import '../Core/Button.dart';
import 'AutoRedirect/AuthCubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(final BuildContext context) => BlocListener<AuthCubit, AuthState>(
    listener: (context, state) {
      if (state is Login) {
        GoRouter.of(context).pop();
      } else {
        GoRouter.of(context).refresh();
      }
    },
    child: AppScaffold(
        title: 'Home',
        body: Center(
            child: Column(
                children: [
                  AppButton(
                      onTab: () => GoRouter.of(context).push('/${Navigation.menus1.name}'),
                      text: 'Back and Forth Navigation (Menus)'
                  ),
                  AppButton(
                      onTab: () => GoRouter.of(context).push('/${Navigation.menus2.name}'),
                      text: 'Back and Forth Navigation (Menus-2)'
                  ),
                  AppButton(
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.menus3.name),
                      text: 'Back and Forth Navigation by Named (Menus-3)'
                  ),
                  AppButton(
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.screenA.name),
                      text: 'Push and Pop'
                  ),
                  AppButton(
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.senderScreen.name),
                      text: 'Parameters Passing'
                  ),
                  AppButton(
                      onTab: () => context.push('/${Navigation.screenA1.name}'),
                      text: 'Custom back action'
                  ),
                  AppButton(
                      onTab: () => context.pushNamed(Navigation.tab1.name),
                      text: 'Tab bar'
                  ),
                  AppButton(
                      onTab: () =>  context.go('/UnknownRoute'),
                      text: 'Error'
                  ),
                  AppButton(
                      onTab: () =>  context.goNamed(Navigation.animatedScreen.name),
                      text: 'Animation'
                  ),

                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) => AppButton(
                        onTab: () => context.read<AuthCubit>().logout(),
                        text: state is Login? 'Logout': 'Login'
                    )
                  )
                ]
            )
        )
    ),
  );
}