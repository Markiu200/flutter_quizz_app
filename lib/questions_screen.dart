import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          containerChild: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentQuestion.question,
                  style: TextStyle(color: Colors.white),
                ),
                AnswerButton(currentQuestion.answers[0], () {}),
                AnswerButton(currentQuestion.answers[1], () {}),
                AnswerButton(currentQuestion.answers[2], () {}),
                AnswerButton(currentQuestion.answers[3], () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
