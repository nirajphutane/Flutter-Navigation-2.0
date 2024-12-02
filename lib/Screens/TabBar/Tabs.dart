
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Screens/TabBar/TabsCubit.dart';
import '../../Core/AppScaffold.dart';

class Tabs extends StatelessWidget {

  final StatefulNavigationShell navigationShell;

  const Tabs({super.key, required this.navigationShell});

  @override
  Widget build(final BuildContext context) => BlocListener<TabsCubit, TabsState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) => navigationShell.goBranch(state.tabIndex),
      child: AppScaffold(
          title: 'TabBars',
          body: navigationShell,
          bottomNavigationBar: NavigationBar(
              backgroundColor: Colors.deepPurple,
              selectedIndex: navigationShell.currentIndex,
              destinations: const [
                NavigationDestination(label: 'Tab-1', icon: Icon(Icons.looks_one)),
                NavigationDestination(label: 'Tab-2', icon: Icon(Icons.looks_two)),
                NavigationDestination(label: 'Tab-3', icon: Icon(Icons.looks_3))
              ],
              // onDestinationSelected: changeTab
            onDestinationSelected: (final int index) {
              context.read<TabsCubit>().changeTab(index, index == 1? true: false);
            }
          )
      )
  );
}
