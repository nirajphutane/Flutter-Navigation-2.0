
import 'dart:math';
import 'package:flutter/material.dart';
import '../../Core/AppScaffold.dart';

class AnimationScreen extends StatelessWidget {

  const AnimationScreen({super.key});

  @override
  Widget build(final BuildContext context) => AppScaffold(
      title: 'Animation',
      body: Center(
        child: StreamBuilder<double>(
            stream: Stream.periodic(const Duration(milliseconds: 500), (_) => Random.secure().nextDouble() * 100),
            builder: (BuildContext context, AsyncSnapshot<double> snapshot) => AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOutSine,
              width: snapshot.data,
              height: snapshot.data,
              color: Colors.deepPurple
            )
        )
      )
  );
}