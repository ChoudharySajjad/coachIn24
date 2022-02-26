import 'package:coachs_in24/views/plans/details_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 5),
                child: Text(
                  language == "f"
                      ? "Session du jour"
                      : language == "a"
                          ? "جلسة اليوم"
                          : "Session of the day",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      description:
                                          "The biceps and triceps make up a large majority of your arm musculature. The biceps are located on the front of the upper arm and provide arm flexion, while the triceps are found on the back of the upper arm and are responsible for arm extension.",
                                      exercisesList: const [],
                                      thumbnail: 'assets/images/w1.png',
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 0.18,
                        padding: EdgeInsets.only(left: 15, top: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          language == "f"
                              ? "Biceps + Triceps"
                              : language == "a"
                                  ? "العضلة ذات الرأسين + العضلة ثلاثية الرؤوس"
                                  : "Biceps + Triceps",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      description:
                                          "ABS works by releasing and then reapplying or 'pumping' the brakes to a motorcycle wheel or car wheels in heavy braking situations.When a lock-up is detected, ABS pumps the brakes, 100's of times a second. This stops the wheel or wheels from skidding and helps keep the driver in control of the vehicle.",
                                      exercisesList: const [],
                                      thumbnail: 'assets/images/w1.png',
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 0.18,
                        padding: EdgeInsets.only(left: 15.0, top: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          language == "f"
                              ? "Abs"
                              : language == "a"
                                  ? "عضلات المعدة"
                                  : "Abs",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      description:
                                          "As you've probably noticed, adjectives for 'biceps' are listed above. According to the algorithm that drives this website, the top 5 adjectives for 'biceps' are: thick, flaccid, powerful, rock-hard, rather small and soft, improbably massive, and hairy golden. There are 144 other words to describe biceps listed above. Hopefully the above generated list of words to describe biceps suits your needs.",
                                      exercisesList: const [],
                                      thumbnail: 'assets/images/w1.png',
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 5.0, left: 5, right: 5),
                              child: Container(
                                color: Colors.transparent,
                                child: Image.network(
                                    'https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                language == "f"
                                    ? "Biceps"
                                    : language == "a"
                                        ? "Biceps"
                                        : "Biceps",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
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
                                builder: (context) => DetailsScreen(
                                      description:
                                          "The triceps brachii is a large, thick muscle on the dorsal part of the upper arm. It often appears as the shape of a horseshoe on the posterior aspect of the arm. The main function of the triceps is the extension of the elbow joint.",
                                      exercisesList: const [],
                                      thumbnail: 'assets/images/w1.png',
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 5.0, left: 5, right: 5),
                              child: Container(
                                color: Colors.transparent,
                                child: Image.network(
                                    'https://thumbs.dreamstime.com/b/angry-athlete-trains-gym-big-76487806.jpg'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                language == "f"
                                    ? "Triceps"
                                    : language == "a"
                                        ? "Triceps"
                                        : "Triceps",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
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
                padding: EdgeInsets.only(top: 10.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          description:
                                              'A big, strong back can take you far in your athletic endeavors. The back muscles help you to twist your torso, pull your arms in and down from overhead, and, most importantly, stabilize your spine. When you train these essential muscles, you’ll be more efficient at pulling and twisting motions in general. Also, a bigger and stronger back will help you deadlift and bench press more weight more efficiently.',
                                          exercisesList: const [],
                                          thumbnail: 'assets/images/w1.png',
                                        )));
                          },
                          child: Container(
                            width: 140,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  language == "f"
                                      ? "Back"
                                      : language == "a"
                                          ? "Back"
                                          : "Back",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/w8.jpeg")),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                            description:
                                                "Standing, hold dumbbells with your palms facing each other. Bend your torso forward, forming a 45-degree angle with the floor. With elbows slightly bent, raise the dumbbells up and out to the sides until they are parallel to the floor. As you lift the weights, focus on squeezing your shoulder blades together.",
                                            exercisesList: const [],
                                            thumbnail: 'assets/images/w1.png',
                                          )));
                            },
                            child: Container(
                              width: 140,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    language == "f"
                                        ? "Shoulders"
                                        : language == "a"
                                            ? "Shoulders"
                                            : "Shoulders",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                  ),
                                  Container(
                                    color: Colors.transparent,
                                    child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                            "assets/images/w4.jpeg")),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                            description:
                                                "Strong legs do more than look good. Even the simplest daily movements like walking require leg strength. This means that incorporating leg workouts into your routine is integral to your health.",
                                            exercisesList: const [],
                                            thumbnail: 'assets/images/w1.png',
                                          )));
                            },
                            child: Container(
                              width: 140,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    language == "f"
                                        ? "Legs"
                                        : language == "a"
                                            ? "Legs"
                                            : "Legs",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                  ),
                                  Container(
                                    color: Colors.transparent,
                                    child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            AssetImage("assets/images/a1.jpg")),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                        description:
                                            "We’re all for planking your way to a stronger core. And odds are you have a handful of go-to bodyweight abs exercises that you do on the mat when you’re cooling down.\nBut if you’ve ever wondered how you can work your abs with the equipment available at your gym, we’ve got you covered with 17 creative and effective ways to take your abs routine up a notch.",
                                        exercisesList: const [],
                                        thumbnail: 'assets/images/w1.png',
                                      )));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.47,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 5.0, left: 5, right: 5),
                                child: Container(
                                  color: Colors.transparent,
                                  child: Image.network(
                                      'https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  language == "f"
                                      ? "Abs"
                                      : language == "a"
                                          ? "Abs"
                                          : "Abs",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
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
            ],
          ),
        ),
      ),
    );
  }
}
