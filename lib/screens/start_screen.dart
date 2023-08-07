import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {

  const StartScreen(this.switchScreenToQuestions,
      {super.key});

  final void Function() switchScreenToQuestions;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(
              'assets/images/quiz-logo.png',
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            onPressed: switchScreenToQuestions,
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}


