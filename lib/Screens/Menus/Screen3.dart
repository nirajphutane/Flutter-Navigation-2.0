
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus | Screen-3',
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
