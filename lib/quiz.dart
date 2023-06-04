import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';

import 'package:flutter_quiz_app/start_screen.dart';

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
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
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
          child: activeScreen,
        ),
      ),
    );
  }
}
