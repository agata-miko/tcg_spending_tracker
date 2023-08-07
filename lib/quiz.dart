import 'package:flutter/material.dart';
import 'package:tcg_spending_tracker/screens/questions_screen.dart';
import 'screens/start_screen.dart';
import 'package:tcg_spending_tracker/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer (String usersAnswer) {
      selectedAnswers.add(usersAnswer);

      if (selectedAnswers.length == questions.length) {
        setState(() {
          selectedAnswers = [];
          activeScreen = 'start-screen';
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple.shade800, Colors.purple],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
