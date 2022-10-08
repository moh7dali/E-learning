import 'package:e_learning/Compoments/Materials.dart';
import 'package:e_learning/Screens/Lesson.dart';
import 'package:e_learning/Screens/Quizscreen/Quizscreen.dart';
import 'package:e_learning/Screens/Startpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(0, 6, 166, 1)),
        backgroundColor: Colors.white,
        actions: [
          Container(
              padding: EdgeInsets.only(right: 10),
              child: Image.network(
                'https://i.pinimg.com/564x/b3/51/be/b351beab30156cd9c04bf5e19e17f967.jpg',
                width: 40,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/b3/51/be/b351beab30156cd9c04bf5e19e17f967.jpg")),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(
                'Messages',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 380,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Start();
                  },
                ));
              },
              icon: Icon(Icons.logout),
              label: Text("Log Out"),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 47, 95)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.nunito(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 3, 78)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Text(
                "Find a Lessons you want to learn",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 100, 100, 100)),
              ),
            ),
            Row(
              children: [
                Materials(
                  title: "Grammar",
                  img_url: "images/img_1.jpeg",
                  val: false,
                  start_lessions: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Lesson(
                          title: "Grammar",
                          img_url: "images/img_1.jpeg",
                        );
                      },
                    ));
                  },
                ),
                Materials(
                  title: "Vocabulary",
                  img_url: "images/img_2.jpeg",
                  val: true,
                  start_lessions: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Lesson(
                          title: "Vocabulary",
                          img_url: "images/img_2.jpeg",
                        );
                      },
                    ));
                  },
                ),
              ],
            ),
            Row(
              children: [
                Materials(
                  title: "Writing",
                  img_url: "images/img_3.jpeg",
                  val: true,
                  start_lessions: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Lesson(
                          title: "Writing",
                          img_url: "images/img_3.jpeg",
                        );
                      },
                    ));
                  },
                ),
                Materials(
                  title: "Listening",
                  img_url: "images/img_4.jpeg",
                  val: false,
                  start_lessions: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Lesson(
                          title: "Listening",
                          img_url: "images/img_4.jpeg",
                        );
                      },
                    ));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return QuizScreen();
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
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text("Test YourSelf Before You start ",
                  style: GoogleFonts.nunito(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 100, 100, 100))),
            ),
          ],
        ),
      ),
    );
  }
}
