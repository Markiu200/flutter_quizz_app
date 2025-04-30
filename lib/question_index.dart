import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(this.index, this.isCorrect, {super.key});

  final int index;
  final bool isCorrect;

  // https://www.dhiwise.com/post/building-a-flutter-circular-container-a-detailed-walkthrough
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(shape: BoxShape.circle),
    );
  }
}
