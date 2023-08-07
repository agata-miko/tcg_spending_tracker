import 'package:flutter/material.dart';
import 'package:tcg_spending_tracker/data/questions.dart';
import 'package:tcg_spending_tracker/models/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.chosenAnswers, Key? key}) : super(key: key);

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData () {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You answered ... out of ... questions correctly!'),
            const SizedBox(height: 30.0),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(height: 30.0),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
