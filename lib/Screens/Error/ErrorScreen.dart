
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../Core/AppScaffold.dart';
import '../../Core/Button.dart';

class ErrorScreen extends StatelessWidget {

  final String? path;

  const ErrorScreen(this.path, {super.key});

  @override
  Widget build(final BuildContext context) => AppScaffold(
      title: 'We r pirates...',
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Now you stuck in our island'),
                Text('Error: $path'),
                AppButton(
                    onTab: () => GoRouter.of(context).go('/'),
                    text: 'Save from pirates'
                )
              ]
          )
      )
  );
}