import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';

import 'package:flutter_quiz_app/start_screen.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/results_screen.dart';

const List<Color> colors = [
  Color.fromARGB(255, 228, 22, 8),
  Color.fromARGB(255, 80, 108, 108),
  Color.fromARGB(255, 8, 228, 200),
];

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void onRestart() {
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswers = [];
    });
  }

  @override
  Widget build(context) {
    Widget currentWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      currentWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      currentWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: onRestart,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: currentWidget,
        ),
      ),
    );
  }
}
