import 'package:flutter/material.dart';
import 'package:nt_challenge/onboarding/widgets/analiza_view.dart';
import 'package:nt_challenge/onboarding/widgets/button_view.dart';
import 'package:nt_challenge/onboarding/widgets/conecta_view.dart';
import 'package:nt_challenge/onboarding/widgets/entrena_view.dart';
import 'package:nt_challenge/onboarding/widgets/neuralwel_view.dart';

class MyOnboardingScreen extends StatefulWidget {
  const MyOnboardingScreen({super.key});

  @override
  State<MyOnboardingScreen> createState() => _MyOnboardingScreenState();
}

class _MyOnboardingScreenState extends State<MyOnboardingScreen> {
  int currentIndex = 0;

  changeIndex(value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              allowImplicitScrolling: true,
              onPageChanged: changeIndex,
              children: const [
                MyNeuralwelView(),
                MyConetaView(),
                MyEntrenaView(),
                MyAnalizaView(),
              ],
            ),
          ),
          MyButtonView(currentIndex: currentIndex),
        ],
      ),
    );
  }
}
