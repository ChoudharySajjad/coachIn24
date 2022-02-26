import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class PersonalCoach extends StatefulWidget {
  const PersonalCoach({Key key}) : super(key: key);

  @override
  _PersonalCoachState createState() => _PersonalCoachState();
}

class _PersonalCoachState extends State<PersonalCoach> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/w1.png"),
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
                  padding: EdgeInsets.only(top: 350.0, left: 18.0, right: 50.0),
                  child: Text(
                    language == "f"
                        ? "VOTRE COACH DE GYM PERSONNEL."
                        : language == "a"
                            ? "مدربك الرياضي الشخصي."
                            : "YOUR PERSONAL GYM COACH.",
                    // "YOUR PERSONAL GYM COACH.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 160.0),
                  child: Text(
                    language == "f"
                        ? "En moins de 2 minutes, nous vous créerons un plan d'entraînement personnalisé adapté à vos objectifs et à vos capacités de mise en forme."
                        : language == "a"
                            ? "في أقل من دقيقتين ، سنبني لك خطة تدريب مخصصة مصممة خصيصًا لتناسب أهدافك وقدراتك على اللياقة البدنية"
                            : "In Less than 2 minutes, we will build you a custom workout plan that is tailored to your fitness goals and abilities.",
                    // "In Less than 2 minutes, we will build you a custom workout plan that is tailored to your fitness goals and abilities.",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFffcf3f),
                      maximumSize: Size(500, 60),
                      minimumSize: Size(300, 45),
                    ),
                    onPressed: () {},
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
