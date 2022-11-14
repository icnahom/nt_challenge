import 'package:flutter/material.dart';
import 'package:nt_challenge/shared/widgets/dot_indicator.dart';
import 'package:nt_challenge/shared/widgets/primary_button.dart';

class MyButtonView extends StatelessWidget {
  const MyButtonView({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyDotsIndicator(
              currentIndex: currentIndex,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0,
            ),
            child: MyPrimaryButton(
              label: 'INICIAR SESIÓN',
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
