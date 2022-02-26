// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/welcome_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool container1;
  bool container2;
  bool container3;

  String title = "اختر لغتك";
  @override
  void initState() {
    container1 = false;
    container2 = true;
    container3 = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                   EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
              child: Text(
                language == "f"
                    ? "Choisissez Votre Langue"
                    : language == "a"
                        ? "اختر لغتك"
                        : "Choose Your Language",
                style: TextStyle(color: Colors.white, fontSize: 35.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.0, left: 25.0, right: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      if (container1 == false) {
                        setState(() {
                          language = "a";
                          title = "اختر لغتك";
                          container2 = false;
                          container1 = true;
                          container3 = false;
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                          decoration: BoxDecoration(
                            color: container1 == false
                                ? Colors.grey
                                : Color(0xFFffcf3f),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage("assets/images/arab.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          "العربية",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (container2 == false) {
                        setState(() {
                          language = "f";
                          title = "Choisissez Votre Langue";
                          container2 = true;
                          container3 = false;
                          container1 = false;
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                          decoration: BoxDecoration(
                            color: container2 == false
                                ? Colors.grey
                                : Color(0xFFffcf3f),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage("assets/images/fran.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          "Français",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (container3 == false) {
                        setState(() {
                          language = "e";
                          title = "Choose Your Language";
                          container2 = false;
                          container1 = false;
                          container3 = true;
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.25,
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                          decoration: BoxDecoration(
                            color: container3 == false
                                ? Colors.grey
                                : Color(0xFFffcf3f),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage("assets/images/usa3.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          "English",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 180.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFffcf3f),
                      maximumSize: Size(500, 60),
                      minimumSize: Size(300, 45)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen()));
                  },
                  child: Text(
                    language == "f"
                        ? "Suivant"
                        : language == "a"
                            ? "التالي"
                            : "Next",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
