import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/splash_screen.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'startScreen';

  List<String> chosenAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questionsScreen';
    });
  }

  void chooseAnswer(String answer) {
    print(
        "chooseAnswer called, chosenAnswers.length is ${chosenAnswers.length} ");
    chosenAnswers.add(answer);

    if (chosenAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'resultsScreen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = SplashPage(switchScreen);
    if (activeScreen == 'questionsScreen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else {
      screenWidget = SplashPage(switchScreen);
    }

    if (activeScreen == 'resultsScreen') {
      screenWidget = const ResultsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple,
                Colors.deepPurpleAccent,
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
