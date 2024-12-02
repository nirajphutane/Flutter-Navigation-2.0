
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus-2 | Screen-8',
        body: Center(
          child: Column(
            children: [
              AppButton(
                text: 'Push Screen-8',
                onTab: () => GoRouter.of(context).push('/${Navigation.menus2.name}/${Navigation.screen8.name}'),
              ),

              AppButton(
                text: 'Push & Replace Screen-8',
                onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.menus2.name}/${Navigation.screen8.name}'),
              ),

              AppButton(
                text: 'Go Screen-8',
                onTab: () => GoRouter.of(context).go('/${Navigation.menus2.name}/${Navigation.screen8.name}'),
              ),

              AppButton(
                  text: 'Pop',
                  onTab: () => context.pop()
              ),

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
            ],
          ),
        )
    );
  }
}
