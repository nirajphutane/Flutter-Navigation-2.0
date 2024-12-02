
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import 'package:navigation_2/Core/DataGenerator.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';
import 'TabsCubit.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Center(
            child: Column(
                children: [

                  Text('Tab-1 | ${DataGenerator().getRandomNumber(3)}', style: const TextStyle(fontSize: 22)),

                  AppButton(
                      text: 'Tab-2',
                      onTab: () => context.read<TabsCubit>().changeTab(1)
                  ),

                  AppButton(
                      text: 'Tab-3',
                      onTab: () => context.read<TabsCubit>().changeTab(2)
                  ),

                  AppButton(
                      text: 'Go to Tab-2',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.tab2.name)
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
