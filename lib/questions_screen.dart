import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

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
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          containerChild: Center(child: const Text("Hello questions")),
        ),
      ),
    );
  }
}
