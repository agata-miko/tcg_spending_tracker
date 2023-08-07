import 'package:flutter/material.dart';
import 'package:tcg_spending_tracker/widgets/answer_button.dart';
import 'package:tcg_spending_tracker/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(currentQuestion.text, style: TextStyle(color: Colors.white),),
          const SizedBox(height: 30.0),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onPressed: () {});
          }),
        ],
      ),
    );
  }
}


