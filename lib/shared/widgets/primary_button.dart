import 'package:flutter/material.dart';

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.maxFinite, 48),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0))),
      child: Text(
        label,
        style: Theme.of(context).primaryTextTheme.labelLarge,
      ),
    );
  }
}
