
import 'package:bloc/bloc.dart';

class TabsState {
  final int tabIndex;
  final bool canRebuild;
  const TabsState(this.tabIndex, this.canRebuild);
}

class TabsCubit extends Cubit<TabsState> {

  TabsCubit() : super(const TabsState(0, false));

  void changeTab(final int tabIndex, [final bool canRebuild = false]) => emit(TabsState(tabIndex, canRebuild));
}