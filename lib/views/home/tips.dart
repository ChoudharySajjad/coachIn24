import 'package:coachs_in24/views/plans/details_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  const Tips({Key key}) : super(key: key);

  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                language == "f"
                    ? "De nos coachs"
                    : language == "a"
                        ? "من مدربينا"
                        : "From our coaches",
                // 'From our coaches',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://beattractive.in/wp-content/uploads/2017/01/Heavy-Light-Workout.jpg")))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://d.newsweek.com/en/full/1524142/cardio-workout.jpg")))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://www.hussle.com/blog/wp-content/uploads/2020/05/Heavy-or-light-weights.png")))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://purlifefitness.com/wp-content/uploads/2017/05/iStock-530579954.jpg")))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                language == "f"
                    ? "Doublez vos résultats de remise en forme"
                    : language == "a"
                        ? "ضاعف نتائج لياقتك"
                        : "Double your fitness results",
                // 'Double your fitness results',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/black-athlete-lifting-heavy-dumbbells-royalty-free-image-1595580084.jpg")))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://cdn.lifestyleasia.com/wp-content/uploads/sites/6/2020/04/06160204/nike-training-club-app-home-workouts-more-1.jpg")))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://s2.best-wallpaper.net/wallpaper/1920x1080/1703/Fitness-girl-sportswear-dumbbells-gym_1920x1080.jpg")))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://f.vividscreen.info/soft/62c1a9182c7bc1e2998f2f4d505bd1b4/Fitness-Gym-Workout-1920x1080.jpg")))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 20.0, bottom: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        description: language == "f"
                            ? "3 mois"
                            : language == "a"
                                ? "3 أشهر"
                                : "3 months",
                        exercisesList: const [],
                        thumbnail: 'assets/images/w1.png',
                      ),
                    ),
                  );
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://c0.wallpaperflare.com/preview/244/648/954/fitness-men-sports-gym.jpg")))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
