import 'package:e_learning/Compoments/Question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  Quiz({this.title});
  String? title;
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 145, 20, 229),
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 145, 20, 229)),
        body: SingleChildScrollView(
          child: Column(children: [
            if (widget.title == "Grammar") Grammar(),
            if (widget.title == "Vocabulary") Vocab(),
            if (widget.title == "Writing") Writing(),
            if (widget.title == "Listening") Listening(),
          ]),
        ));
  }
}

class Grammar extends StatelessWidget {
  const Grammar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            answer_1: ["like", 1],
            answer_2: ["likes", 0],
            answer_3: ["be like", 0],
            answer_4: ["are like", 0],
            Question_text: "Do you _____ chocolate milk?"),
        Question(
            answer_1: ["Is", 0],
            answer_2: ["Are", 1],
            answer_3: ["be ", 0],
            answer_4: ["was", 0],
            Question_text: "_____ they coming over for dinner?"),
        Question(
            answer_1: ["Was", 0],
            answer_2: ["Have", 0],
            answer_3: ["Has", 1],
            answer_4: ["were", 0],
            Question_text: "_____ the sun come up?"),
        Question(
            answer_1: ["has", 0],
            answer_2: ["have", 0],
            answer_3: ["wants", 1],
            answer_4: ["want", 0],
            Question_text: "He _____breakfast now?"),
      ],
    );
  }
}

class Vocab extends StatelessWidget {
  const Vocab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            answer_1: ["6 o'clock", 0],
            answer_2: ["7 o'clock", 0],
            answer_3: ["4 o'clock", 0],
            answer_4: ["8 o'clock", 1],
            Question_text: "When does Benji wake up?"),
        Question(
            answer_1: ["eating breakfast", 0],
            answer_2: ["Play Sport", 0],
            answer_3: ["brushing his teeth", 1],
            answer_4: ["watch tv", 0],
            Question_text:
                "What is the first thing Benji does in the morning?"),
        Question(
            answer_1: ["Go shopping", 0],
            answer_2: ["Paint ", 1],
            answer_3: ["Play Sport", 0],
            answer_4: ["watch tv", 0],
            Question_text: "What does Benji like to do in the afternoon?"),
        Question(
            answer_1: ["Sleep", 0],
            answer_2: ["Go shopping", 0],
            answer_3: ["Play Sport", 0],
            answer_4: ["Watch TV ", 1],
            Question_text: "What dose Benji like to do in the evening?"),
        Question(
            answer_1: ["Honey", 0],
            answer_2: ["Sandwich with peanut butter", 1],
            answer_3: ["coffee", 0],
            answer_4: ["Bread", 0],
            Question_text: "What did Benji have for lunch?"),
        Question(
            answer_1: ["Do dishes", 1],
            answer_2: ["Go to sleep", 0],
            answer_3: ["Go shopping", 0],
            answer_4: ["Play Video game", 0],
            Question_text: "What does Benji do after dinner?"),
      ],
    );
  }
}

class Writing extends StatelessWidget {
  const Writing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            answer_1: ["The Simple Sentence", 1],
            answer_2: ["The Complex Sentence", 0],
            answer_3: ["The Compound Sentence", 0],
            answer_4: ["The Declarative Sentence", 0],
            Question_text: "The cat stretched, IS?"),
        Question(
            answer_1: ["The Simple Sentence", 0],
            answer_2: ["The Complex Sentence", 0],
            answer_3: ["The Compound Sentence", 1],
            answer_4: ["The Declarative Sentence", 0],
            Question_text:
                "I am counting my calories, yet I really want dessert., IS?"),
        Question(
            answer_1: ["The Simple Sentence", 1],
            answer_2: ["The Complex Sentence", 0],
            answer_3: ["The Compound Sentence", 0],
            answer_4: ["The Declarative Sentence", 0],
            Question_text: "The car turned the corner, IS?"),
      ],
    );
  }
}

class Listening extends StatelessWidget {
  const Listening({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            answer_1: ["They are dangerous ", 0],
            answer_2: ["They leave with their mom.", 0],
            answer_3: ["They can't stand when they are born", 1],
            answer_4: ["They are big", 0],
            Question_text: "What is true of baby raccoons?"),
        Question(
            answer_1: ["2", 0],
            answer_2: ["3", 0],
            answer_3: ["4", 1],
            answer_4: ["5", 0],
            Question_text:
                "How many babies does a raccoon mother usually have?"),
        Question(
            answer_1: ["worries from other animals might find her den ", 1],
            answer_2: ["worries from rain", 0],
            answer_3: ["worries from people", 0],
            answer_4: ["worries from fire", 0],
            Question_text: "Why do raccoons move dens?"),
        Question(
            answer_1: ["They are normal", 0],
            answer_2: ["They are fish", 1],
            answer_3: ["They are horses", 0],
            answer_4: ["They can't swim", 0],
            Question_text: "Why can't seahorses live on land?"),
        Question(
            answer_1: ["Tiny fins. ", 1],
            answer_2: ["Horns", 0],
            answer_3: ["Big fins.", 0],
            answer_4: ["Legs", 0],
            Question_text: "What do seahorses have?"),
        Question(
            answer_1: ["Tools ", 0],
            answer_2: ["Food", 0],
            answer_3: ["Eggs", 1],
            answer_4: ["Babies", 0],
            Question_text: "What does the father keep in the pouch?"),
        Question(
            answer_1: ["2007 ", 0],
            answer_2: ["2004 ", 1],
            answer_3: ["2009", 0],
            answer_4: ["2020", 0],
            Question_text: "When was the Merazonia established?"),
        Question(
            answer_1: ["A panda", 0],
            answer_2: ["A gorilla", 0],
            answer_3: ["A monkey", 1],
            answer_4: [" A skunk", 0],
            Question_text: "What was the first animal at the sanctuary?"),
      ],
    );
  }
}
