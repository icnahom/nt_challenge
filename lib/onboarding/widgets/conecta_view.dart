import 'package:flutter/material.dart';
import 'package:nt_challenge/shared/widgets/onboarding_feature.dart';

class MyConetaView extends StatelessWidget {
  const MyConetaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyOnboardingFeature(
        tag: "#MOVEYOURMIND",
        header: 'CONECTA',
        note:
            'Conecta tus neuro sensores a la aplicacion Neural Trainer y comienza a aumentar tu rendimento cognitivo',
        image: 'conecta.png');
  }
}
