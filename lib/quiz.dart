import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/splash_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'startScreen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questionsScreen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = SplashPage(switchScreen);
    if (activeScreen == 'questionsScreen') {
      screenWidget = const QuestionsScreen();
    }
    else {
      screenWidget = SplashPage(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
            ),
          ),
          child: activeScreen == 'startScreen'
              ? SplashPage(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
