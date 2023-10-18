import 'package:flutter/material.dart';
import 'package:quiz_application/answer_button.dart';
import 'package:quiz_application/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentQuestion.text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        const SizedBox(
          height: 30,
        ),
        for (int i = 0; i <= 3; i++)
          AnswerButton(answerText: currentQuestion.answer[i], onTap: () {}),
      ],
    );
  }
}
