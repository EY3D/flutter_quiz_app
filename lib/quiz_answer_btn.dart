import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizAnswerBtn extends StatelessWidget {
  const QuizAnswerBtn(this.questionText, this.onTap, {super.key});

  final String questionText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.black38,
          foregroundColor: Colors.white,
        ),
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
