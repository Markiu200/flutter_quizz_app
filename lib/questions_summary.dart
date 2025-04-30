import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children:
                summaryData.map((data) {
                  return Row(
                    children: [
                      Text(((data["question_index"] as int) + 1).toString()),
                      Expanded(
                        child: Column(
                          children: [
                            Text(data["question"] as String),
                            const SizedBox(height: 5),
                            Text(data["selectedAnswer"] as String),
                            Text(data["correctAnswer"] as String),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
