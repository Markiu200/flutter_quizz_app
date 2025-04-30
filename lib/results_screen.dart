import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

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
        "isCorrect": questions[i].answers[0] == selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final int allQuestions = questions.length;
    final summaryData = getSummaryData();
    final int correctQuestions =
        summaryData.where((data) {
          return data["isCorrect"] == true;
        }).length;

    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: GradientContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You answered $correctQuestions out of $allQuestions questions correctly!",
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 252, 225, 255),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                QuestionsSummary(summaryData),
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
