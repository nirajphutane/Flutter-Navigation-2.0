
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import '../../Core/AppScaffold.dart';
import '../../Core/DataGenerator.dart';
import '../../Routes/Routes.dart';
import 'TabsCubit.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Center(
            child: Column(
                children: [

                  Text('Tab-2 | ${DataGenerator().getRandomNumber(3)}', style: const TextStyle(fontSize: 22)),

                  AppButton(
                      text: 'Tab-1',
                      onTab: () => context.read<TabsCubit>().changeTab(0)
                  ),

                  AppButton(
                      text: 'Tab-3',
                      onTab: () => context.read<TabsCubit>().changeTab(2)
                  ),

                  AppButton(
                      text: 'Pop',
                      onTab: () => context.pop()
                  ),

                  AppButton(
                      text: 'Go to Tab-1',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.tab1.name)
                  ),

                  AppButton(
                      text: 'Go to Tab-3',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.tab3.name)
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
