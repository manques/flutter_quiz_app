import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summaryItem, {super.key});

  final Map<String, Object> summaryItem;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        summaryItem['correct_answer'] == summaryItem['user_answer'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: summaryItem['question_index'] as int,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryItem['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                summaryItem['user_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 119, 246, 240),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                summaryItem['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 111, 184, 245),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
