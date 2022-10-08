import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Show extends StatefulWidget {
  Show({this.val, this.correct});
  String? val;
  int? correct;

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (widget.correct == 1) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      Container(
                        child: Image.network(
                            'http://badbooksgoodtimes.com/wp-content/uploads/2017/12/plankton-correct-gif.gif'),
                      )
                    ],
                  );
                });
          } else {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      Container(
                        child: Image.network(
                            'https://media0.giphy.com/media/Wq9RLX06zRg4UM42Qf/200w.gif?cid=82a1493bhf69vmdbnr409xkot0bcf9xa02am88brhniosp84&rid=200w.gif&ct=g'),
                      )
                    ],
                  );
                });
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 56, 1, 93),
            ),
            width: 350,
            height: 70,
            child: Text(
              "${widget.val}",
              style: GoogleFonts.nunito(fontSize: 20, color: Colors.white),
            ),
          ),
        ));
  }
}
