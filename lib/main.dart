import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> selectedAnswers = [];
  String screen = "quiz-screen";

  void switchScreen() {
    setState(() {
      screen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      while (selectedAnswers.isNotEmpty) {
        selectedAnswers.removeLast();
      }
      setState(() {
        screen = "results-screen";
      });
    }
  }

  @override
  Widget build(BuildContext build) {
    if (screen == "quiz-screen") {
      return Quiz(switchScreen);
    } else if (screen == "questions-screen") {
      return QuestionsScreen(chooseAnswer);
    } else {
      return ResultsScreen(selectedAnswers);
    }
  }
}
