import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "flutter question",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {
                startQuiz();
              },
              label: const Text("Start Quiz "))
        ],
      ),
    );
  }
}
