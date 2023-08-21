import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/quiz_answer_btn.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key, required this.onSelectAnswer});

  void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void nextQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion
                .getShuffledAnswers()
                .map((answer) => QuizAnswerBtn(
                      answer,
                      () {
                        nextQuestion(answer);
                      },
                    )),
            // QuizAnswerBtn(
            //   currentQuestion.answers[0],
            //   () {},
            // ),
            // QuizAnswerBtn(
            //   currentQuestion.answers[1],
            //   () {},
            // ),
            // QuizAnswerBtn(
            //   currentQuestion.answers[2],
            //   () {},
            // ),
            // QuizAnswerBtn(
            //   currentQuestion.answers[3],
            //   () {},
            // ),
          ],
        ),
      ),
    );
  }
}
