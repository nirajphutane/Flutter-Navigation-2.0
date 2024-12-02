
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import 'package:navigation_2/Core/DataGenerator.dart';
import 'package:navigation_2/Utils/Data.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {

  late String _code;
  Data? _data;

  @override
  void initState() {
    _code = DataGenerator().getRandomString(6);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Push & Pop | Screen-A',
        body: Center(
          child: Column(
            children: [

              Text(_code),

              AppButton(
                text: 'Pass $_code from Screen-A to Screen-B by Push',
                onTab: () async {
                  _data = await GoRouter.of(context).push<Data>('/${Navigation.screenB.name}', extra: Data(_code));
                  setState(() { });
                }
              ),

              AppButton(
                text: 'Pass $_code from Screen-A to Screen-B by Push & Replace',
                onTab: () async {
                  _data = await GoRouter.of(context).pushReplacement('/${Navigation.screenB.name}', extra: Data(_code));
                  setState(() { });
                }
              ),

              AppButton(
                text: 'Pass $_code from Screen-A to Screen-B by Go',
                onTab: () => GoRouter.of(context).go('/${Navigation.screenB.name}', extra: Data(_code)),
              ),

              AppButton(
                text: 'Pop',
                onTab: () => context.pop()
              ),

              AppButton(
                  text: 'Pass $_code from Screen-A to Screen-B by Push Named',
                  onTab: () async {
                    _data = await GoRouter.of(context).pushNamed<Data>(Navigation.screenB.name, extra: Data(_code));
                    setState(() { });
                  }
              ),

              AppButton(
                  text: 'Pass $_code from Screen-A to Screen-B by Push & Replace Named',
                  onTab: () async {
                    _data = await GoRouter.of(context).pushReplacementNamed<Data>(Navigation.screenB.name, extra: Data(_code));
                    setState(() { });
                  }
              ),

              AppButton(
                text: 'Pass $_code from Screen-A to Screen-B by Go Named',
                onTab: () => GoRouter.of(context).goNamed(Navigation.screenB.name, extra: Data(_code))
              ),

              Text(_data?.data?? '--No Value--')
            ]
          )
        )
    );
  }
}
