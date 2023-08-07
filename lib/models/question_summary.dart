import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, Key? key})
      : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: data['correct_answer'] == data['user_answer'] ? Colors.purpleAccent : Colors.lightBlueAccent,
                    radius: 15.0,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data['question'] as String,
                            style: TextStyle(color: Colors.purple[100], fontSize: 12.0),
                          ),
                          const SizedBox(height: 5),
                          Text(data['correct_answer'] as String, style: const TextStyle(color: Colors.purpleAccent, fontSize: 10.0),),
                          Text(data['user_answer'] as String, style: const TextStyle(color: Colors.blue, fontSize: 10.0),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
