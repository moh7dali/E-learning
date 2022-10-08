import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

late Uri _url;

class Subject extends StatefulWidget {
  Subject({this.Sub_title, this.sub_num, this.Start_watch});
  String? Sub_title;
  String? sub_num;
  Function()? Start_watch;

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.Start_watch,
      child: Container(
        child: ListTile(
          title: Text("${widget.Sub_title}",
              style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 3, 68))),
          leading: Text(
            "${widget.sub_num}",
            style: GoogleFonts.nunito(
                fontSize: 30, color: Color.fromARGB(255, 100, 100, 100)),
          ),
          trailing: Icon(
            Icons.play_circle,
            color: Color.fromARGB(255, 248, 146, 38),
            size: 40,
          ),
        ),
      ),
    );
  }
}
