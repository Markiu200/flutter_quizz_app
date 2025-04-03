import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.containerChild});

  final Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.pink],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: containerChild,
    );
  }
}
