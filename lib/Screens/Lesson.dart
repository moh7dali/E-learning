import 'package:e_learning/Compoments/subject.dart';
import 'package:e_learning/Screens/Quiz.dart';
import 'package:e_learning/Screens/Video.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lesson extends StatefulWidget {
  Lesson({this.title, this.img_url});
  String? title;
  String? img_url;
  Function()? play;

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(backgroundColor: Color.fromRGBO(41, 104, 201, 1)),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.white,
            child: Text(
              "${widget.title}",
              style: GoogleFonts.nunito(
                  fontSize: 50, color: Color.fromARGB(255, 1, 3, 78)),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${widget.img_url}'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                )),
            width: double.infinity,
            height: 270,
            child: Text(""),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                )),
            width: double.infinity,
            height: 500,
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              if (widget.title == "Grammar") Grammar(),
              if (widget.title == "Vocabulary") Vocab(),
              if (widget.title == "Writing") Writing(),
              if (widget.title == "Listening") Listening(),
            ]),
          )
        ],
      )),
    );
  }
}

//Grammer info
class Grammar extends StatelessWidget {
  const Grammar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Subject(
        Sub_title: "Present simple",
        sub_num: "01",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/simple-present-easysave.net.mp4",
                info:
                    "1-The sun (sets) in the west.\n\n2-We (produce) lasers for cosmetic surgery.\n\n3-They (move) into their new home next week.\n\n4-So, I (go) to Mr. D and say “I deserve a better mark in this class”.\n\n5-Jones (stops) in mid-court and passes the ball to Schuster",
              );
            },
          ));
        },
      ),
      Subject(
        Sub_title: "Present Progressive",
        sub_num: "02",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/Present-Progressive.mp4",
                info: "1-We (are playing) football\n\n2-Ahmed (is eating) now",
              );
            },
          ));
        },
      ),
      Subject(
        Sub_title: "Present Perfect",
        sub_num: "03",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/Present-Perfect.mp4",
                info:
                    "1-have been living in this house for 40 years.(I started living in it 40 years ago and I am still living in it today.)\n\n2-I have been climbing up this mountain for over two hours.(I started climbing up it two hours ago and at this moment I’m still climbing.)",
              );
            },
          ));
        },
      ),
      SizedBox(
        height: 40,
      ),
      SizedBox(
        height: 50,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Quiz(
                  title: "Grammar",
                );
              },
            ));
          },
          child: Text("Go To Quiz"),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            primary: Color.fromARGB(255, 255, 47, 95),
          ),
        ),
      ),
    ]);
  }
}

//Vocab info
class Vocab extends StatelessWidget {
  const Vocab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Subject(
        Sub_title: "Morning Routine",
        sub_num: "01",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/v1.mp4",
                info:
                    "Wake up : يستيقظ\n\nBrush : فرشاه\n\nEggs : بيض\n\nHoney : عسل\n\nRide : يقود\n\nQuite : هادئ",
              );
            },
          ));
        },
      ),
      Subject(
        Sub_title: "Afternoon Routine",
        sub_num: "02",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/v2.mp4",
                info:
                    "Paint : رسم\n\nBeautiful : جميل\n\nHungry : جائع\n\nLunchtime : وقت الغداء",
              );
            },
          ));
        },
      ),
      Subject(
        Sub_title: "Evening Routine",
        sub_num: "03",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/v3.mp4",
                info:
                    "Watch : يشاهد\n\nDinner : عشاء\n\nDishes : صحون\n\nFeed : يزود",
              );
            },
          ));
        },
      ),
      SizedBox(
        height: 40,
      ),
      SizedBox(
        height: 50,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Quiz(
                  title: "Vocabulary",
                );
              },
            ));
          },
          child: Text("Go To Quiz"),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            primary: Color.fromARGB(255, 255, 47, 95),
          ),
        ),
      ),
    ]);
  }
}

//Writing info
class Writing extends StatelessWidget {
  const Writing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Subject(
        Sub_title: "The Simple Sentence",
        sub_num: "01",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/simple.mp4",
                info:
                    "1-The cat stretched.\n\n2-Jacob stood on his tiptoes.\n\n3-The car turned the corner.",
              );
            },
          ));
        },
      ),
      Subject(
        Sub_title: "The Compound Sentence",
        sub_num: "02",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/com.mp4",
                info:
                    "1-She did not cheat on the test, for it was the wrong thing to do.\n\n2-I really need to go to work, but I am too sick to drive.\n\n3-I am counting my calories, yet I really want dessert.",
              );
            },
          ));
        },
      ),
      SizedBox(
        height: 40,
      ),
      SizedBox(
        height: 50,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Quiz(
                  title: "Writing",
                );
              },
            ));
          },
          child: Text("Go To Quiz"),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            primary: Color.fromARGB(255, 255, 47, 95),
          ),
        ),
      ),
    ]);
  }
}

//Listening info
class Listening extends StatelessWidget {
  const Listening({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Subject(
        Sub_title: "Listening Level 1",
        sub_num: "01",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/Listening1.mp4",
                info: "Listen And Speak With the Video",
              );
            },
          ));
        },
      ),
      Subject(
        Sub_title: "Listening Level 2",
        sub_num: "02",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/Listening2.mp4",
                info: "Listen And Speak With the Video",
              );
            },
          ));
        },
      ),
      Subject(
        Sub_title: "Listening Level 3",
        sub_num: "03",
        Start_watch: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return VideoApp(
                url: "images/Listening3.mp4",
                info: "Listen And Speak With the Video",
              );
            },
          ));
        },
      ),
      SizedBox(
        height: 40,
      ),
      SizedBox(
        height: 50,
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Quiz(
                  title: "Listening",
                );
              },
            ));
          },
          child: Text("Go To Quiz"),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            primary: Color.fromARGB(255, 255, 47, 95),
          ),
        ),
      ),
    ]);
  }
}
