import 'package:flutter/material.dart';

class MyOnboardingImage extends StatefulWidget {
  const MyOnboardingImage({super.key, required this.image});
  final String image;

  @override
  State<MyOnboardingImage> createState() => _MyOnboardingImageState();
}

class _MyOnboardingImageState extends State<MyOnboardingImage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          'assets/images/onboarding/${widget.image}',
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        ),
        Container(
          height: MediaQuery.of(context).size.height * .30,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
