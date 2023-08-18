import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/quiz_answer_btn.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          QuizAnswerBtn(
            currentQuestion.answers[0],
            () {},
          ),
          QuizAnswerBtn(
            currentQuestion.answers[1],
            () {},
          ),
          QuizAnswerBtn(
            currentQuestion.answers[2],
            () {},
          ),
          QuizAnswerBtn(
            currentQuestion.answers[3],
            () {},
          ),
        ],
      ),
    );
  }
}
