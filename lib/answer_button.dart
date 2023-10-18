import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          foregroundColor: Colors.white,
          backgroundColor: Colors.purple),
      onPressed: onTap,
      child: Text(answerText),
    );
  }
}
