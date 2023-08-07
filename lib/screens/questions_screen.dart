import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tcg_spending_tracker/widgets/answer_button.dart';
import 'package:tcg_spending_tracker/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onSelectAnswer, Key? key}) : super(key: key);

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.purple[50],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer, onPressed: () {
                    answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
