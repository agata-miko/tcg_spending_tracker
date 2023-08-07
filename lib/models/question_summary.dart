import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, Key? key})
      : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: <Widget>[
            Text(
              ((data['question_index'] as int) + 1).toString(),
            ),
            Column(
              children: <Widget>[
                Text(data['question'] as String),
                SizedBox(height: 5),
                Text(data['correct_answer'] as String),
                Text(data['user_answer'] as String),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
