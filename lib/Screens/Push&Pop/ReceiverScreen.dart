
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import 'package:navigation_2/Core/DataGenerator.dart';
import 'package:navigation_2/Utils/Data.dart';
import '../../Core/AppScaffold.dart';

class ReceiverScreen extends StatelessWidget {

  final int param1;
  final String param2;

  const ReceiverScreen({super.key, required this.param1, required this.param2});

  @override
  Widget build(BuildContext context) => AppScaffold(
      title: 'Receiver Screen',
      body: Center(
          child: Text('Received: Param1= $param1, Param2= $param2')
      )
  );
}
