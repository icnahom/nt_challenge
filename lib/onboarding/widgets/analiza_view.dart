import 'package:flutter/material.dart';
import 'package:nt_challenge/shared/widgets/onboarding_feature.dart';

class MyAnalizaView extends StatelessWidget {
  const MyAnalizaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyOnboardingFeature(
        tag: "#MOVEYOURMIND",
        header: 'ANALIZA',
        note:
            'Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.',
        image: 'analiza.png');
  }
}
