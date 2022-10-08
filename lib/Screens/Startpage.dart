import 'package:e_learning/Screens/login.dart';
import 'package:e_learning/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/2.jpg"),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                width: 380,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                    image: NetworkImage(
                        "https://i.pinimg.com/originals/b2/35/46/b235465842d78fb9d5736c2a759fd7a8.png"),
                  ),
                ),
              ),
              Divider(
                height: 130,
              ),
              Text(
                "Nourish your ",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "inner skills",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Divider(
                height: 10,
              ),
              Text(
                "choose your favorite course and start learning",
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  color: Color.fromARGB(255, 167, 166, 166),
                ),
              ),
              Divider(
                height: 60,
              ),
              SizedBox(
                height: 55,
                width: 160,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPrimary: Color.fromARGB(255, 255, 255, 255),
                    primary: Color.fromARGB(255, 255, 47, 95),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LogIn();
                      },
                    ));
                  },
                  child: Text(
                    "Lets Start",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}
