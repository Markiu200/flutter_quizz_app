import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/questions_screen.dart';

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
  Widget? screen;

  @override
  void initState() {
    super.initState(); //always paired with function, put on top
    // couldn't do it outside initState - method is being created still
    screen = Quiz(switchScreen);
  }

  void switchScreen() {
    setState(() {
      screen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext build) {
    return screen!;
  }
}
