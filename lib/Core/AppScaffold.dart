
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {

  final String title;
  final Widget? body;
  final BackAction? backAction;
  final void Function(bool didPop, Object? result)? onBack;

  const AppScaffold({super.key, required this.title, this.body, this.backAction, this.onBack});

  @override
  Widget build(BuildContext context) =>
      onBack != null? _PopScope(
          title: title,
          backAction: backAction,
          onBack: onBack!,
          body: body
      ): _Scaffold(
          title: title,
          backAction: backAction,
          body: body
      );
}

class _Scaffold extends StatelessWidget {

  final String title;
  final BackAction? backAction;
  final Widget? body;

  const _Scaffold({required this.title, this.body, this.backAction});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(title),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      leading: backAction != null? IconButton(
          onPressed: () => backAction!.onBack(),
          icon: Icon(backAction!.icon)
      ): null,
    ),
    body: body,
  );
}

class _PopScope extends StatelessWidget {

  final String title;
  final Widget? body;
  final void Function(bool didPop, Object? result) onBack;
  final BackAction? backAction;

  const _PopScope({required this.title, this.body, required this.onBack, this.backAction});

  @override
  Widget build(BuildContext context) => PopScope(
    canPop: false,
    onPopInvokedWithResult: onBack.call,
    child: _Scaffold(
      title: title,
      backAction: backAction,
      body: body
    ),
  );
}

class BackAction {
  final IconData icon;
  final Function onBack;

  BackAction(this.icon, this.onBack);
}