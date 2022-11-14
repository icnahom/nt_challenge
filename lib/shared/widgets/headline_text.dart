import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHeadlineSmall extends StatelessWidget {
  const MyHeadlineSmall(this.data, {super.key});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class MyHeadlineMedium extends StatelessWidget {
  const MyHeadlineMedium(this.data, {super.key});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
