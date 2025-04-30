import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(this.index, this.isCorrect, {super.key});

  final int index;
  final bool isCorrect;

  // https://www.dhiwise.com/post/building-a-flutter-circular-container-a-detailed-walkthrough
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrect ? Colors.green : Colors.deepOrange,
      ),
      child: Center(
        child: Text(
          index.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
