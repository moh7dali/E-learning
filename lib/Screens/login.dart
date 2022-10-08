import 'package:e_learning/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String em = "user@user.com";
  String pass = "12345";
  String re_em = "";
  String re_pa = "";
  bool vis = false;
  TextEditingController gettxt_email = new TextEditingController();
  TextEditingController gettxt_pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Login page"),
          backgroundColor: Color.fromRGBO(11, 13, 52, 1)),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/originals/b2/35/46/b235465842d78fb9d5736c2a759fd7a8.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: TextField(
              controller: gettxt_email,
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                prefixIcon: Icon(Icons.mail),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                label: Text(
                  "Email",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: TextField(
              controller: gettxt_pass,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                prefixIcon: Icon(Icons.key),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                label: Text(
                  "Password",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              obscureText: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              "Forget Password ?",
              style: GoogleFonts.nunito(fontSize: 20, color: Colors.red),
            ),
          ),
          Container(
            child: Text(
              "Need An Account ? Sign Up",
              style: GoogleFonts.nunito(fontSize: 20, color: Colors.blue),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  re_em = gettxt_email.text;
                  re_pa = gettxt_pass.text;
                  if (re_em == em && re_pa == pass) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  } else
                    vis = true;
                });
              },
              child: Text(
                "Login",
                style: GoogleFonts.nunito(fontSize: 25),
              ),
              style: ElevatedButton.styleFrom(minimumSize: Size(150, 50)),
            ),
          ),
          Visibility(
            child: Text(
              "Wrong Email or Password",
              style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.red),
            ),
            visible: vis,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ));
              },
              child: Text(
                "Continue As guest",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.blue.shade500,
                    decoration: TextDecoration.underline),
              ))
        ]),
      ),
    );
  }
}
