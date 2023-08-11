import 'package:flutter/material.dart';
import 'quiz.dart';

class SplashPage extends StatelessWidget {
  const SplashPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              color: const Color.fromARGB(128, 255, 255, 255),
              width: 300,
            ),
            const SizedBox(height: 28),
            const Text(
              'Learn flutter the fun way!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
