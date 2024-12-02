
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/AppScaffold.dart';
import 'package:navigation_2/Routes/Routes.dart';
import '../../Core/Button.dart';

class Menus1 extends StatefulWidget {
  const Menus1({super.key});

  @override
  State<Menus1> createState() => _Menus1State();
}

class _Menus1State extends State<Menus1> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus',
        body: Center(
          child: AppButton(
              onTab: ()=> GoRouter.of(context).push('/${Navigation.menus1.name}/${Navigation.screen1.name}'),
              text: 'Screen-1'
          )
        )
    );
  }
}
