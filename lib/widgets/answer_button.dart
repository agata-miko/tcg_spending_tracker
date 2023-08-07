import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText,
    required this.onPressed,
    super.key,
  });

  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple[900],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
      ),
      onPressed: onPressed,
      child: Text(answerText),
    );
  }
}
