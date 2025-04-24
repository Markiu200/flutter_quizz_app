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
  int currentQuestionIndex = 0;

  void answerQuestion() {
    currentQuestionIndex++;
  }

  void switchQuestion() {
    setState(() {
      answerQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          containerChild: SizedBox(
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    currentQuestion.question,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  // map runs a function for each list element returns Iterable of
                  // the results it got. Then spread operator (...) makes that
                  // into separate Widgets instead of list (Iterable) of Widgets.
                  ...currentQuestion.getShuffledAnswers().map((answer) {
                    return AnswerButton(answer, switchQuestion);
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
