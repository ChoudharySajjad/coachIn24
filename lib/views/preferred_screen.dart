import 'package:coachs_in24/views/coach_page/coach_choose.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class PreferredScreen extends StatefulWidget {
  const PreferredScreen({Key key}) : super(key: key);

  @override
  _PreferredScreenState createState() => _PreferredScreenState();
}

class _PreferredScreenState extends State<PreferredScreen> {
  bool container1;
  bool container2;

  @override
  void initState() {
    container1 = true;
    container2 = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                language == "f"
                    ? "Vous preferiez?"
                    : language == "a"
                        ? "تفضل؟"
                        : "You preferred?",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 40.0, left: 25.0, right: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        if (container1 == true) {
                          setState(() {
                            container2 = true;
                            container1 = false;
                          });
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.width * 0.4,
                            padding: EdgeInsets.only(
                                left: 5.0, right: 5.0, bottom: 5.0, top: 5.0),
                            decoration: BoxDecoration(
                              color: container1 == true
                                  ? Colors.grey
                                  : Color(0xFFffcf3f),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Image(
                                image: NetworkImage(
                                    "https://mirafit.co.uk/wp/wp-content/uploads/2018/02/crossfit-expert-does-a-pull-up-on-a-mirafit-half-power-rack-1024x683.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              language == "f"
                                  ? "ENTRAÎNEMENTS À DOMICILE"
                                  : language == "a"
                                      ? "تمارين منزلية"
                                      : "HOME WORKOUTS",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: InkWell(
                        onTap: () {
                          if (container2 == true) {
                            setState(() {
                              container2 = false;
                              container1 = true;
                            });
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.width * 0.4,
                              padding: EdgeInsets.only(
                                  left: 5.0, right: 5.0, bottom: 5.0, top: 5.0),
                              decoration: BoxDecoration(
                                color: container2 == true
                                    ? Colors.grey
                                    : Color(0xFFffcf3f),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Image(
                                  image: NetworkImage(
                                      "https://f.vividscreen.info/soft/62c1a9182c7bc1e2998f2f4d505bd1b4/Fitness-Gym-Workout-1920x1080.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                language == "f"
                                    ? "ENTRAÎNEMENTS DE GYM"
                                    : language == "a"
                                        ? "تمارين رياضية"
                                        : "GYM WORKOUTS",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
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
                              builder: (context) => CoachChoose()));
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
