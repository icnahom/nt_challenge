import 'package:flutter/material.dart';
import 'package:nt_challenge/shared/widgets/onboarding_feature.dart';

class MyEntrenaView extends StatelessWidget {
  const MyEntrenaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyOnboardingFeature(
        tag: "#MOVEYOURMIND",
        header: 'ENTRENA',
        note:
            'Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento especifico.',
        image: 'entrena.png');
  }
}
