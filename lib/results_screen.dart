import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

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
