import 'package:flutter/material.dart';
import 'package:tcg_spending_tracker/widgets/answer_button.dart';
import 'package:tcg_spending_tracker/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(width: double.infinity,
      child: Container(margin: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(currentQuestion.text, style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
            const SizedBox(height: 30.0),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onPressed: answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}


