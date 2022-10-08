import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Materials extends StatefulWidget {
  Materials({this.title, this.img_url, this.val, this.start_lessions});
  String? title;
  String? img_url;
  bool? val;
  Function()? start_lessions;
  @override
  State<Materials> createState() => _MaterialsState();
}

class _MaterialsState extends State<Materials> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.start_lessions,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(children: [
            Container(
              child: Text(""),
              width: 175,
              height: widget.val! ? 175 : 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage('${widget.img_url}'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white70,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white70,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ) //BoxShadow
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white70,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white70,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Text(
                "${widget.title}",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 3, 78)),
              ),
            )
          ]),
        ));
  }
}
