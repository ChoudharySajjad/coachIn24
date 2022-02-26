// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/language_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LanguageScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Padding(
              padding: EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFffcf3f),
                    radius: 42,
                    child: Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/run.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    language == "f"
                        ? "Entraîneur`IN24"
                        : language == "a"
                            ? "IN24`المدرب "
                            : "Coach`IN24",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      color: Colors.white,
                      letterSpacing: 1.8,
                    ),
                  ),
                  Text(
                    language == "f"
                        ? "Votre entraîneur personnel"
                        : language == "a"
                            ? "مدربك الشخصي"
                            : "Your Personal Trainer",
                    style: TextStyle(color: Color(0xFFffcf3f), fontSize: 16.0),
                  ),
                  SizedBox(height: 180),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFffcf3f),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 30,
                              bottom: 10,
                              child: Row(
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 10, top: 20),
                                    child: Text(
                                      "CURATED\nWorkout\nGuides",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 100,
                                    backgroundImage:
                                        AssetImage("assets/images/cu1.jpg"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
