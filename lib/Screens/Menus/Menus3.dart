
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Menus3 extends StatefulWidget {
  const Menus3({super.key});

  @override
  State<Menus3> createState() => _Menus3State();
}

class _Menus3State extends State<Menus3> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus-3',
        body: Center(
          child: AppButton(
              onTab: ()=> GoRouter.of(context).pushNamed(Navigation.screen9.name),
              text: 'Screen-9'
          )
        )
    );
  }
}
