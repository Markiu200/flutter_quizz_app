import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

class Quiz extends StatelessWidget {
  const Quiz(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          containerChild: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                  color: Color.fromARGB(150, 255, 255, 255),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Text(
                    'Learn Flutter the fun way!',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      switchScreen();
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    icon: Icon(Icons.arrow_right_alt),
                    label: Text('Start Quiz'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
