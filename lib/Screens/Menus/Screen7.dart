
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus-2 | Screen-7',
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
              )
            ],
          ),
        )
    );
  }
}
