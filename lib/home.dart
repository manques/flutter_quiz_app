import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Home extends StatelessWidget {
  const Home(this.colors, {super.key});

  void startQuiz() {}
  final List<Color> colors;

  @override
  build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 15,
                ),
              ),
              onPressed: startQuiz,
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
