
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import 'package:navigation_2/Core/DataGenerator.dart';
import 'package:navigation_2/Utils/Data.dart';
import '../../Core/AppScaffold.dart';

class ChildReceiverScreen extends StatelessWidget {

  final int paramA;
  final String paramB;

  const ChildReceiverScreen({super.key, required this.paramA, required this.paramB});

  @override
  Widget build(BuildContext context) => AppScaffold(
      title: 'Child Receiver Screen',
      onBack: (_, __) => context.pop(),
      body: Center(
          child: Text('Received: ParamA= $paramA, ParamB= $paramB')
      )
  );
}
