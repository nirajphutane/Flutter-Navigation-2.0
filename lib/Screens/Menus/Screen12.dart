
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen12 extends StatefulWidget {
  const Screen12({super.key});

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus-3 | Screen-12',
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
              ),

              AppButton(
                text: 'Push Named Screen-5',
                onTab: () => GoRouter.of(context).pushNamed(Navigation.screen5.name),
              ),

              AppButton(
                text: 'Push & Replace Named Screen-5',
                onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.screen5.name),
              ),

              AppButton(
                text: 'Go Named Screen-5',
                onTab: () => GoRouter.of(context).goNamed(Navigation.screen5.name),
              )
            ],
          ),
        )
    );
  }
}
