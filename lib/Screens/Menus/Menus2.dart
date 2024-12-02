
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class Menus2 extends StatefulWidget {
  const Menus2({super.key});

  @override
  State<Menus2> createState() => _Menus2State();
}

class _Menus2State extends State<Menus2> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Menus-2',
        body: Center(
          child: AppButton(
              onTab: ()=> GoRouter.of(context).push('/${Navigation.menus2.name}/${Navigation.screen5.name}'),
              text: 'Screen-5'
          ),
        )
    );
  }
}
