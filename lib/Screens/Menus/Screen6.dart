
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus-2 | Screen-6',
        body: Center(
          child: Column(
            children: [
              AppButton(
                text: 'Push Screen-7',
                onTab: () => GoRouter.of(context).push('/${Navigation.menus2.name}/${Navigation.screen7.name}'),
              ),

              AppButton(
                text: 'Push & Replace Screen-7',
                onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.menus2.name}/${Navigation.screen7.name}'),
              ),

              AppButton(
                text: 'Go Screen-7',
                onTab: () => GoRouter.of(context).go('/${Navigation.menus2.name}/${Navigation.screen7.name}'),
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
