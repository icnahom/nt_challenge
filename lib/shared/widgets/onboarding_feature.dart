import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nt_challenge/shared/widgets/headline_text.dart';
import 'package:nt_challenge/shared/widgets/onboarding_image.dart';

class MyOnboardingFeature extends StatelessWidget {
  const MyOnboardingFeature({
    super.key,
    required this.tag,
    required this.header,
    required this.note,
    required this.image,
  });
  final String tag;
  final String header;
  final String note;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MyOnboardingImage(image: image),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyHeadlineSmall(tag),
            const SizedBox(height: 32.0),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: MyHeadlineMedium(header),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    note,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
