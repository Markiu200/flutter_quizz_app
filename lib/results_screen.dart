import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].question,
        "correctAnswer": questions[i].answers[0],
        "selectedAnswer": selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: GradientContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You answered X out of Y questions correctly!"),
                const SizedBox(height: 30),
                const Text("List of answers and questions"),
                const SizedBox(height: 30),
                TextButton(onPressed: () {}, child: Text("Restart Quiz!")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
