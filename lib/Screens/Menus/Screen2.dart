
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus | Screen-2',
        body: Center(
          child: Column(
            children: [
              AppButton(
                text: 'Push Screen-3',
                onTab: () => GoRouter.of(context).push('/${Navigation.menus1.name}/${Navigation.screen3.name}'),
              ),

              AppButton(
                text: 'Push & Replace Screen-3',
                onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.menus1.name}/${Navigation.screen3.name}'),
              ),

              AppButton(
                text: 'Go Screen-3',
                onTab: () => GoRouter.of(context).go('/${Navigation.menus1.name}/${Navigation.screen3.name}'),
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
