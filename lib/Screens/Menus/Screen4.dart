
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus | Screen-4',
        body: Center(
          child: Column(
            children: [
              AppButton(
                text: 'Push Screen-4',
                onTab: () => GoRouter.of(context).push('/${Navigation.menus1.name}/${Navigation.screen4.name}'),
              ),

              AppButton(
                text: 'Push & Replace Screen-4',
                onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.menus1.name}/${Navigation.screen4.name}'),
              ),

              AppButton(
                text: 'Go Screen-4',
                onTab: () => GoRouter.of(context).go('/${Navigation.menus1.name}/${Navigation.screen4.name}'),
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
