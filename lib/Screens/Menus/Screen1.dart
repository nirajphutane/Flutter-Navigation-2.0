
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Menus | Screen-1',
      body: Center(
        child: Column(
          children: [
            AppButton(
                text: 'Push Screen-2',
                onTab: () => GoRouter.of(context).push('/${Navigation.menus1.name}/${Navigation.screen2.name}'),
            ),

            AppButton(
                text: 'Push & Replace Screen-2',
                onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.menus1.name}/${Navigation.screen2.name}'),
            ),

            AppButton(
                text: 'Go Screen-2',
                onTab: () => GoRouter.of(context).go('/${Navigation.menus1.name}/${Navigation.screen2.name}'),
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
