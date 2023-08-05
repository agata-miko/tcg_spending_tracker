import 'package:flutter/material.dart';
import 'package:tcg_spending_tracker/screens/questions_screen.dart';
import 'package:tcg_spending_tracker/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: QuestionsScreen(),
    );
  }
}

