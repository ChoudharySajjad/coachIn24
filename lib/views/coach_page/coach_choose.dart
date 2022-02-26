import 'package:coachs_in24/views/coach_page/coach_representation1.dart';
import 'package:coachs_in24/views/coach_page/coach_representation2.dart';
import 'package:coachs_in24/views/coach_page/coach_representation3.dart';
import 'package:coachs_in24/views/plans/best_plan.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class CoachChoose extends StatefulWidget {
  const CoachChoose({Key key}) : super(key: key);

  @override
  _CoachChooseState createState() => _CoachChooseState();
}

class _CoachChooseState extends State<CoachChoose> {
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
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
              child: Text(
                language == "f"
                    ? "Choisir son coach"
                    : language == "a"
                        ? "اختر مدربك"
                        : "Choose your Coach",
                style: TextStyle(color: Colors.white, fontSize: 35.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoachRepresentation1()));

                      if (container1 == false) {
                        setState(() {
                          container2 = false;
                          container1 = true;
                          container3 = false;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 170.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.width * 0.25,
                            padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                bottom: 10.0,
                                top: 10.0),
                            decoration: BoxDecoration(
                              color: container1 == false
                                  ? Colors.grey
                                  : Color(0xFFffcf3f),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image(
                              image: AssetImage("assets/images/za.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            language == "f"
                                ? "Zakaria"
                                : language == "a"
                                    ? "زكريا"
                                    : "Zakaria",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoachRepresentation2()));
                      if (container2 == false) {
                        setState(() {
                          container2 = true;
                          container3 = false;
                          container1 = false;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 170.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.width * 0.25,
                            padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                bottom: 10.0,
                                top: 10.0),
                            decoration: BoxDecoration(
                              color: container2 == false
                                  ? Colors.grey
                                  : Color(0xFFffcf3f),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image(
                              image: AssetImage("assets/images/c.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            language == "f"
                                ? "Pouvez"
                                : language == "a"
                                    ? "علبة"
                                    : "Saad",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoachRepresentation3()));
                      if (container3 == false) {
                        setState(() {
                          container2 = false;
                          container1 = false;
                          container3 = true;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 170.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.width * 0.25,
                            padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                bottom: 10.0,
                                top: 10.0),
                            decoration: BoxDecoration(
                              color: container3 == false
                                  ? Colors.grey
                                  : Color(0xFFffcf3f),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image(
                              image: AssetImage("assets/images/ya1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            language == "f"
                                ? "Yasmine"
                                : language == "a"
                                    ? "ياسمين"
                                    : "Yasmine",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFffcf3f),
                      maximumSize: Size(500, 60),
                      minimumSize: Size(300, 45)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BestPLan()));
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
