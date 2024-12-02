
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_2/Core/Button.dart';
import 'package:navigation_2/Core/DataGenerator.dart';
import '../../Core/AppScaffold.dart';
import '../../Routes/Routes.dart';

class SenderScreen extends StatelessWidget {

  SenderScreen({super.key});

  final int param1 = int.parse(DataGenerator().getRandomNumber(6));
  final String param2 = DataGenerator().getRandomString(6);

  final int paramA = int.parse(DataGenerator().getRandomNumber(9));
  final String paramB = DataGenerator().getRandomString(9);

  @override
  Widget build(final BuildContext context) {
    return AppScaffold(
        title: 'Sender Screen',
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                children: [

                  Text('Param1 = $param1, Param2 = $param2'),
                  Text('ParamA = $paramA, ParamB = $paramB'),

                  const Padding(
                    padding: EdgeInsets.only(top: 32.0, bottom: 8),
                    child: Text('Via Parameter'),
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push',
                      onTab: () => context.push('/${Navigation.receiverScreenViaParameter.name}/$param1/$param2')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push',
                      onTab: () => context.push('/${Navigation.receiverScreenViaParameter.name}/$param1/$param2/${Navigation.childReceiverScreenViaParameter.name}/$paramA/$paramB')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push & Replace',
                      onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.receiverScreenViaParameter.name}/$param1/$param2')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push & Replace',
                      onTab: () => context.pushReplacement('/${Navigation.receiverScreenViaParameter.name}/$param1/$param2/${Navigation.childReceiverScreenViaParameter.name}/$paramA/$paramB')
                  ),

                  AppButton(
                    text: 'Pass from Sender Screen to Receiver Screen by Go',
                    onTab: () => GoRouter.of(context).go('/${Navigation.receiverScreenViaParameter.name}/$param1/$param2')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Go',
                      onTab: () => context.go('/${Navigation.receiverScreenViaParameter.name}/$param1/$param2/${Navigation.childReceiverScreenViaParameter.name}/$paramA/$paramB')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push Named',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.receiverScreenViaParameter.name, pathParameters: {'param1': '$param1', 'param2': param2})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push Named',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.childReceiverScreenViaParameter.name, pathParameters: {'param1': '$param1', 'param2': param2, 'paramA': '$paramA', 'paramB': paramB})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push & Replace Named',
                      onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.receiverScreenViaParameter.name, pathParameters: {'param1': '$param1', 'param2': param2})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push & Replace Named',
                      onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.childReceiverScreenViaParameter.name, pathParameters: {'param1': '$param1', 'param2': param2, 'paramA': '$paramA', 'paramB': paramB})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Go Named',
                      onTab: () => GoRouter.of(context).goNamed(Navigation.receiverScreenViaParameter.name, pathParameters: {'param1': '$param1', 'param2': param2})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Go Named',
                      onTab: () => GoRouter.of(context).goNamed(Navigation.childReceiverScreenViaParameter.name, pathParameters: {'param1': '$param1', 'param2': param2, 'paramA': '$paramA', 'paramB': paramB})
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 8),
                    child: Text('Via Query'),
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push',
                      onTab: () => context.push('/${Navigation.receiverScreenViaQuery.name}?param1=$param1&param2=$param2')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push',
                      onTab: () => context.push('/${Navigation.receiverScreenViaQuery.name}/${Navigation.childReceiverScreenViaQuery.name}?paramA=$paramA&paramB=$paramB')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push & Replace',
                      onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.receiverScreenViaQuery.name}?param1=$param1&param2=$param2')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push & Replace',
                      onTab: () => GoRouter.of(context).pushReplacement('/${Navigation.receiverScreenViaQuery.name}/${Navigation.childReceiverScreenViaQuery.name}?paramA=$paramA&paramB=$paramB')
                  ),

                  AppButton(
                    text: 'Pass from Sender Screen to Receiver Screen by Go',
                    onTab: () => GoRouter.of(context).go('/${Navigation.receiverScreenViaQuery.name}?param1=$param1&param2=$param2')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Go',
                      onTab: () => GoRouter.of(context).go('/${Navigation.receiverScreenViaQuery.name}/${Navigation.childReceiverScreenViaQuery.name}?paramA=$paramA&paramB=$paramB')
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push Named',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.receiverScreenViaQuery.name, queryParameters: {'param1': '$param1', 'param2': param2})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push Named',
                      onTab: () => GoRouter.of(context).pushNamed(Navigation.childReceiverScreenViaQuery.name, queryParameters: {'paramA': '$paramA', 'paramB': paramB})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Push & Replace Named',
                      onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.receiverScreenViaQuery.name, queryParameters: {'param1': '$param1', 'param2': param2})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Push & Replace Named',
                      onTab: () => GoRouter.of(context).pushReplacementNamed(Navigation.childReceiverScreenViaQuery.name, queryParameters: {'paramA': '$paramA', 'paramB': paramB})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Receiver Screen by Go Named',
                      onTab: () => GoRouter.of(context).goNamed(Navigation.receiverScreenViaQuery.name, queryParameters: {'param1': '$param1', 'param2': param2})
                  ),

                  AppButton(
                      text: 'Pass from Sender Screen to Child Receiver Screen by Go Named',
                      onTab: () => GoRouter.of(context).goNamed(Navigation.childReceiverScreenViaQuery.name, queryParameters: {'param1': '$param1', 'param2': param2, 'paramA': '$paramA', 'paramB': paramB})
                  )
                ]
            )
          )
        )
    );
  }
}
