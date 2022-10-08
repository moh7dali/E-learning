import 'package:e_learning/Compoments/Show.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  Question(
      {this.Question_text,
      this.answer_1,
      this.answer_2,
      this.answer_3,
      this.answer_4});

  String? Question_text;
  List? answer_1;
  List? answer_2;
  List? answer_3;
  List? answer_4;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromARGB(255, 145, 20, 229),
          padding: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "${widget.Question_text}",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Show(
          val: widget.answer_1![0],
          correct: widget.answer_1![1],
        ),
        Show(
          val: widget.answer_2![0],
          correct: widget.answer_2![1],
        ),
        Show(
          val: widget.answer_3![0],
          correct: widget.answer_3![1],
        ),
        Show(
          val: widget.answer_4![0],
          correct: widget.answer_4![1],
        ),
      ],
    );
  }
}
