
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen11 extends StatefulWidget {
  const Screen11({super.key});

  @override
  State<Screen11> createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Menu-3 | Screen-11',
      body: Center(
        child: Column(
          children: [
            AppButton(
                text: 'Push Named Screen-12',
                onTab: () => GoRouter.of(context).pushNamed(Navigation.screen12.name),
            ),

            AppButton(
                text: 'Push & Replace Named Screen-12',
                onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.screen12.name),
            ),

            AppButton(
                text: 'Go Named Screen-12',
                onTab: () => GoRouter.of(context).goNamed(Navigation.screen12.name),
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
