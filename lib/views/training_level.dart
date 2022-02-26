import 'package:coachs_in24/views/multiple_times.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class TrainingLevel extends StatefulWidget {
  const TrainingLevel({Key key, String email, String phoneNo, String username})
      : super(key: key);

  @override
  _TrainingLevelState createState() => _TrainingLevelState();
}

class _TrainingLevelState extends State<TrainingLevel> {
  bool container1;
  bool container2;
  bool container3;
  @override
  void initState() {
    container1 = true;
    container2 = false;
    container3 = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 10.0, top: 15.0),
                child: Text(
                  language == "f"
                      ? "Quel est votre niveau d'experience"
                      : language == "a"
                          ? "ما هو مستوى خبرتك"
                          : "What is your level of experience",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 60.0, left: 25.0, right: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => WelcomeScreen()));
                        if (container1 == true) {
                          setState(() {
                            container2 = true;
                            container1 = false;
                            container3 = true;
                          });
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.70,
                            height: MediaQuery.of(context).size.width * 0.15,
                            padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                bottom: 10.0,
                                top: 10.0),
                            decoration: BoxDecoration(
                              color: container1 == true
                                  ? Colors.grey
                                  : Color(0xFFffcf3f),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                              language == "f"
                                  ? "Plus frais"
                                  : language == "a"
                                      ? "أعذب"
                                      : "Fresher",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => WelcomeScreen()));
                          if (container2 == true) {
                            setState(() {
                              container2 = false;
                              container1 = true;
                              container3 = true;
                            });
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              height: MediaQuery.of(context).size.width * 0.15,
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              decoration: BoxDecoration(
                                color: container2 == true
                                    ? Colors.grey
                                    : Color(0xFFffcf3f),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                language == "f"
                                    ? "Intermédiaire"
                                    : language == "a"
                                        ? "متوسط"
                                        : "Intermediate",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => WelcomeScreen()));
                          if (container3 == true) {
                            setState(() {
                              container2 = true;
                              container3 = false;
                              container1 = true;
                            });
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              height: MediaQuery.of(context).size.width * 0.15,
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              decoration: BoxDecoration(
                                color: container3 == true
                                    ? Colors.grey
                                    : Color(0xFFffcf3f),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                language == "f"
                                    ? "Avancée"
                                    : language == "a"
                                        ? "متقدم"
                                        : "Advanced",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.0),
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
                              builder: (context) => MultipleTimes()));
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
      ),
    );
  }
}
