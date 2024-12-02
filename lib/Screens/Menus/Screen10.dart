
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Menu-3 | Screen-10',
      body: Center(
        child: Column(
          children: [
            AppButton(
                text: 'Push Named Screen-11',
                onTab: () => GoRouter.of(context).pushNamed(Navigation.screen11.name),
            ),

            AppButton(
                text: 'Push & Replace Named Screen-11',
                onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.screen11.name),
            ),

            AppButton(
                text: 'Go Named Screen-11',
                onTab: () => GoRouter.of(context).goNamed(Navigation.screen11.name),
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
