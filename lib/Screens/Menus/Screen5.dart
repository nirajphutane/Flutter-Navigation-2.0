
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus-2 | Screen-5',
        body: Center(
          child: Column(
            children: [
              AppButton(
                text: 'Push Screen-6',
                onTab: () => GoRouter.of(context).push('/${Navigation.menus2.name}/${Navigation.screen6.name}'),
              ),

              AppButton(
                text: 'Push & Replace Screen-6',
                onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.menus2.name}/${Navigation.screen6.name}'),
              ),

              AppButton(
                text: 'Go Screen-6',
                onTab: () => GoRouter.of(context).go('/${Navigation.menus2.name}/${Navigation.screen6.name}'),
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
