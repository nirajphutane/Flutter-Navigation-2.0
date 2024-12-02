
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Core/DataGenerator.dart';
import '../../Routes/Routes.dart';
import 'TabsCubit.dart';

class Tab3 extends StatefulWidget {
  const Tab3({super.key});

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Center(
            child: Column(
                children: [

                  Text('Tab-3 | ${DataGenerator().getRandomNumber(3)}', style: const TextStyle(fontSize: 22)),

                  AppButton(
                      text: 'Tab-1',
                      onTab: () => context.read<TabsCubit>().changeTab(0)
                  ),

                  AppButton(
                      text: 'Tab-2',
                      onTab: () => context.read<TabsCubit>().changeTab(1)
                  ),

                  AppButton(
                      text: 'Go to Tab-1',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.tab1.name)
                  ),

                  AppButton(
                      text: 'Go to Tab-2',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.tab2.name)
                  ),

                  AppButton(
                      text: 'Pop',
                      onTab: () => context.pop()
                  )
                ]
            )
        )
    );
  }
}
