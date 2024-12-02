
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import 'package:navigation_2/Core/DataGenerator.dart';
import 'package:navigation_2/Utils/Data.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class ScreenA1 extends StatefulWidget {
  const ScreenA1({super.key});

  @override
  State<ScreenA1> createState() => _ScreenA1State();
}

class _ScreenA1State extends State<ScreenA1> {

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
        title: 'Custom Back | Screen-A1',
        backAction: BackAction(
          Icons.arrow_back_ios,
          () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Alert'),
                content: const Text('Pop Custom Back | Screen-A1'),
                actions: <Widget>[
                  AppButton(
                      text: 'Back',
                      onTab: () => context.pop()
                  )
                ],
              )
          )
        ),
        body: Center(
            child: Column(
                children: [

                  Text(_code),

                  AppButton(
                      text: 'Pass $_code from Screen-A1 to Screen-B1 by Push',
                      onTab: () async {
                        _data = await GoRouter.of(context).push<Data>('/${Navigation.screenB1.name}', extra: Data(_code));
                        setState(() { });
                      }
                  ),

                  AppButton(
                      text: 'Pass $_code from Screen-A1 to Screen-B1 by Push & Replace',
                      onTab: () async {
                        _data = await GoRouter.of(context).pushReplacement('/${Navigation.screenB1.name}', extra: Data(_code));
                        setState(() { });
                      }
                  ),

                  AppButton(
                    text: 'Pass $_code from Screen-A1 to Screen-B1 by Go',
                    onTab: () => GoRouter.of(context).go('/${Navigation.screenB1.name}', extra: Data(_code)),
                  ),

                  AppButton(
                      text: 'Pop',
                      onTab: () => context.pop()
                  ),

                  AppButton(
                      text: 'Pass $_code from Screen-A1 to Screen-B1 by Push Named',
                      onTab: () async {
                        _data = await GoRouter.of(context).pushNamed<Data>(Navigation.screenB1.name, extra: Data(_code));
                        setState(() { });
                      }
                  ),

                  AppButton(
                      text: 'Pass $_code from Screen-A1 to Screen-B1 by Push & Replace Named',
                      onTab: () async {
                        _data = await GoRouter.of(context).pushReplacementNamed<Data>(Navigation.screenB1.name, extra: Data(_code));
                        setState(() { });
                      }
                  ),

                  AppButton(
                      text: 'Pass $_code from Screen-A1 to Screen-B1 by Go Named',
                      onTab: () => GoRouter.of(context).goNamed(Navigation.screenB1.name, extra: Data(_code))
                  ),

                  Text(_data?.data?? '--No Value--')
                ]
            )
        )
    );
  }
}
