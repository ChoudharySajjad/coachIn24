// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/home/personal_coach.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class Trainers extends StatefulWidget {
  const Trainers({Key key}) : super(key: key);

  @override
  _TrainersState createState() => _TrainersState();
}

class _TrainersState extends State<Trainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/a3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          color: Colors.transparent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Text(
                    language == "f"
                        ? "PLANS D'ENTRAÎNEMENT SUR MESURE"
                        : language == "a"
                            ? "خطط تمرين مصممة خصيصًا"
                            : "CUSTOM MADE WORKOUT PLANS",
                    // "CUSTOM MADE WORKOUT PLANS",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    language == "f"
                        ? "construit pour votre type de corps et vos objectifs"
                        : language == "a"
                            ? "بناء لنوع جسمك وأهدافك"
                            : "build for your body type and goals",
                    // "build for your body type and goals",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFffcf3f),
                      maximumSize: Size(500, 60),
                      minimumSize: Size(300, 45),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PersonalCoach()));
                    },
                    child: Text(
                      language == "f"
                          ? "Construire mon plan"
                          : language == "a"
                              ? "بناء خطتي"
                              : "Build My Plan",
                      // 'Build My Plan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
