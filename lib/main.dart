import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          containerChild: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/quiz-logo.png', width: 300),
                const Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Text(
                    'Learn Flutter the fun way!',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Start Quiz'),
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
