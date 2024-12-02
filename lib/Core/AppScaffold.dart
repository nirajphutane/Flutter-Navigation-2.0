
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {

  final String? title;
  final Widget? body;
  final BackAction? backAction;
  final void Function(bool didPop, Object? result)? onBack;
  final NavigationBar? bottomNavigationBar;

  const AppScaffold({super.key, this.title, this.body, this.backAction, this.onBack, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) =>
      onBack != null? _PopScope(
          title: title,
          backAction: backAction,
          onBack: onBack!,
          body: body,
          bottomNavigationBar: bottomNavigationBar
      ): _Scaffold(
          title: title,
          backAction: backAction,
          body: body,
          bottomNavigationBar: bottomNavigationBar
      );
}

class _Scaffold extends StatelessWidget {

  final String? title;
  final BackAction? backAction;
  final Widget? body;
  final NavigationBar? bottomNavigationBar;

  const _Scaffold({this.title, this.body, this.backAction, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: title != null? AppBar(
      title: Text(title!),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      leading: backAction != null? IconButton(
          onPressed: () async => backAction!.onBack(),
          icon: Icon(backAction!.icon)
      ): null,
    ): null,
    body: body,
    bottomNavigationBar: bottomNavigationBar
  );
}

class _PopScope extends StatelessWidget {

  final String? title;
  final Widget? body;
  final void Function(bool didPop, Object? result) onBack;
  final BackAction? backAction;
  final NavigationBar? bottomNavigationBar;

  const _PopScope({this.title, this.body, required this.onBack, this.backAction, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) => PopScope(
    canPop: false,
    onPopInvokedWithResult: onBack.call,
    child: _Scaffold(
      title: title,
      backAction: backAction,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    ),
  );
}

class BackAction {
  final IconData icon;
  final Function onBack;

  BackAction(this.icon, this.onBack);
}