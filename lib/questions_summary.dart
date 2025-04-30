import 'package:flutter/material.dart';
import 'package:quiz_app/question_index.dart';

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
                  return Container(
                    margin: EdgeInsets.only(bottom: 25),
                    child: Row(
                      children: [
                        QuestionIndex(
                          (data["question_index"] as int) + 1,
                          data["isCorrect"] as bool,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data["question"] as String,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                data["selectedAnswer"] as String,
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    245,
                                    187,
                                    255,
                                  ),
                                ),
                              ),
                              Text(
                                data["correctAnswer"] as String,
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    14,
                                    255,
                                    195,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
