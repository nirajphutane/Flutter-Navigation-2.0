
import 'package:flutter/material.dart';
import 'package:navigation_2/Core/AppLog.dart';

class AppNavigatorObserver extends NavigatorObserver {

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) => AppLog.d(tag: 'AppNavigatorObserver', message: 'Did Push?');

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) => AppLog.d(tag: 'AppNavigatorObserver', message: 'Did Pop?');

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) => AppLog.d(tag: 'AppNavigatorObserver', message: 'Did Remove?');

  @override
  void didReplace({ Route<dynamic>? newRoute, Route<dynamic>? oldRoute }) => AppLog.d(tag: 'AppNavigatorObserver', message: 'Did Replace?');
}