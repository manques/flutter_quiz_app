import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;

    return Container(
      height: 30,
      width: 30,
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 1, 55, 49)
            : const Color.fromARGB(255, 203, 4, 123),
        shape: BoxShape.circle,
      ),
      child: Text(
        questionNumber.toString(),
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
