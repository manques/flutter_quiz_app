import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.onTap,
    required this.answerText,
  });

  final void Function() onTap;
  final String answerText;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 5,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 10,
          ),
          backgroundColor: const Color.fromARGB(255, 6, 65, 65),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
