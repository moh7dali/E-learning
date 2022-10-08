import 'package:e_learning/Compoments/Quizcompoments/Ques_model.dart';
import 'package:e_learning/Screens/Quizscreen/ResultScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Compoments/Quizcompoments/data.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  //page controller for pageview
  PageController? _controller = PageController(initialPage: 0);

  bool isPressed = false;
  Color btnColor = Colors.purple;
  Color righAnswerColor = Color.fromARGB(255, 101, 199, 48);
  Color wrongAnswerColor = Colors.red;

  int score = 0;

  @override
  Widget build(BuildContext context) {
    return
        // home: const MainMenu(),
        Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 20, 229),
      body: Padding(
        padding: EdgeInsets.all(18.0),

        //pageview builder that has the same length as the questions

        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1}/${questions.length}",
                    style: GoogleFonts.nunito(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 8,
                ),
                SizedBox(
                  height: 20,
                ),

                //Question text

                Text(
                  "${questions[index].question!}",
                  style: GoogleFonts.nunito(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),

                //iterate over all the answers

                for (int i = 0; i < questions[index].answer!.length; i++)

                  //Container for the Answer Tiles

                  Container(
                    padding: EdgeInsets.all(1),
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions[index].answer!.entries.toList()[i].value
                              ? righAnswerColor
                              : wrongAnswerColor
                          : Colors.purple,
                      onPressed: isPressed
                          ? () {}
                          : () {
                              setState(() {
                                isPressed = true;
                              });
                              if (questions[index]
                                  .answer!
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score += 1;
                                print(score);
                              }
                            },
                      //generate a list of answers by getting them from the Map
                      child: Text(
                          "${questions[index].answer!.keys.toList()[i]}",
                          style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),

                //spacing

                SizedBox(
                  height: 20,
                ),

                // Next button question

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultScreen(score),
                                      ));
                                }
                              : () {
                                  _controller!.nextPage(
                                      duration: Duration(milliseconds: 700),
                                      curve: Curves.fastLinearToSlowEaseIn);
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                          : null,
                      child: Text(
                        index + 1 == questions.length
                            ? "finish Quiz"
                            : "Next Question",
                        style: GoogleFonts.nunito(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.purple),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
