import 'package:flutter/material.dart';
import 'package:nt_challenge/shared/widgets/headline_text.dart';

import '../../shared/widgets/onboarding_image.dart';

class MyNeuralwelView extends StatelessWidget {
  const MyNeuralwelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const MyOnboardingImage(image: 'neuralwel.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 92),
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * .40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                MyHeadlineSmall('COMENZÁ A VIVIR TU'),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MyHeadlineMedium('NT EXPERIENCE'),
                ),
                SizedBox(height: 16)
              ],
            ),
          ],
        ),
      ],
    );
  }
}
