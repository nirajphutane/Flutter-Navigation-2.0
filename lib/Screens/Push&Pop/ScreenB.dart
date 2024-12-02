
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import 'package:navigation_2/Core/DataGenerator.dart';
import 'package:navigation_2/Utils/Data.dart';
import '../../Core/AppScaffold.dart';

class ScreenB extends StatefulWidget {

  final Data data;

  const ScreenB({super.key, required this.data});

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {

  late Data _data;

  @override
  void initState() {
    _data = Data(DataGenerator().getRandomString(7));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Push & Pop | Screen-B',
        onBack: (_, __) => GoRouter.of(context).pop<Data>(_data),
        body: Center(
          child: Column(
            children: [

              Text('Received: ${widget.data.data}'),

              Text('Generated: ${_data.data}'),

              AppButton(
                  text: 'Pop ${_data.data}',
                  onTab: () => context.pop<Data>(_data)
              )
            ]
          )
        )
    );
  }
}
