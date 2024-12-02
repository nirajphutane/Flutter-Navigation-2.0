
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Menu-3 | Screen-9',
      body: Center(
        child: Column(
          children: [
            AppButton(
                text: 'Push Named Screen-10',
                onTab: () => GoRouter.of(context).pushNamed(Navigation.screen10.name),
            ),

            AppButton(
                text: 'Push & Replace Named Screen-10',
                onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.screen10.name),
            ),

            AppButton(
                text: 'Go Named Screen-10',
                onTab: () => GoRouter.of(context).goNamed(Navigation.screen10.name),
            ),

            AppButton(
                text: 'Pop',
                onTab: () => context.pop()
            )
          ],
        ),
      )
    );
  }
}
