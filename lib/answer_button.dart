import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() onTap;

  const AnswerButton(this.answer, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      child: Text(answer),
    );
  }
}
