import 'package:flutter/material.dart';

class QuizAnswerBtn extends StatelessWidget {
  QuizAnswerBtn(this.questionText, this.onTap, {super.key});

  final String questionText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white,
      ),
      child: Text(
        questionText,
      ),
    );
  }
}
