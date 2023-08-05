import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple.shade800, Colors.purple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  'assets/images/quiz-logo.png',
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton.icon(
                icon: Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
                onPressed: null,
                label: Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
