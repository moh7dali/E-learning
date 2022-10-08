import 'package:e_learning/home.dart';
import 'package:flutter/material.dart';
import 'Quizscreen.dart';
import '../../Compoments/Quizcompoments/data.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            "Your Score Is:\n ${widget.score}/${questions.length}",
            style: GoogleFonts.nunito(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            style: GoogleFonts.nunito(fontSize: 20),
            textAlign: TextAlign.center,
            widget.score >= 50
                ? "You're level is: advanced"
                : "Your level is: beginner",
          )),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ));
              },
              child: Text("Start Learning"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onPrimary: Color.fromARGB(255, 255, 255, 255),
                primary: Color.fromARGB(255, 255, 47, 95),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
