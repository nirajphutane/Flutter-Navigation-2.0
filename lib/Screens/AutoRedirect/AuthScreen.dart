
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_2/Core/AppScaffold.dart';
import '../../Core/Button.dart';
import 'AuthCubit.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  int seconds = 15;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Authentication',
        body: Center(
            child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: ()=> seconds <=15? null: setState(() { seconds-=15; }), icon: const Icon(Icons.exposure_minus_1)),
                        Text('$seconds Seconds', textAlign: TextAlign.center),
                        IconButton(onPressed: ()=> seconds >=300? null: setState(() { seconds+=15; }), icon: const Icon(Icons.exposure_plus_1))
                      ],
                    ),
                  ),

                  AppButton(
                      onTab: ()=> context.read<AuthCubit>().login(seconds),
                      text: 'Login'
                  )
                ]
            )
        )
    );
  }
}
