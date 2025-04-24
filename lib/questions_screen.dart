import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(answer) {
    currentQuestionIndex++;
    // widget property comes from State<> and allows to access properties
    // defined in StatefulWidget part.
    widget.onSelectAnswer(answer);
  }

  void switchQuestion(answer) {
    setState(() {
      answerQuestion(answer);
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
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 252, 225, 255),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  // map runs a function for each list element returns Iterable of
                  // the results it got. Then spread operator (...) makes that
                  // into separate Widgets instead of list (Iterable) of Widgets.
                  ...currentQuestion.getShuffledAnswers().map((answer) {
                    return AnswerButton(answer, () {
                      switchQuestion(answer);
                    });
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
