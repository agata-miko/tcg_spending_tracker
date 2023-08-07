import 'package:flutter/material.dart';
import 'package:tcg_spending_tracker/data/questions.dart';
import 'package:tcg_spending_tracker/models/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.chosenAnswers, required this.restartQuiz, Key? key})
      : super(key: key);

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
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
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: const TextStyle(color: Colors.white, fontSize: 16.0), textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            QuestionSummary(summaryData: summaryData),
            const SizedBox(height: 30.0),
            TextButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(Icons.refresh, color: Colors.white,),
              label: const Text('Restart Quiz', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
