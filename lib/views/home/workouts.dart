// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/plans/details_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class Workouts extends StatefulWidget {
  const Workouts({
    Key key,
    String titles,
    String thumbnail,
    String description,
    List<Widget> exercisesList,
  }) : super(key: key);

  @override
  _WorkoutsState createState() => _WorkoutsState();
}

class _WorkoutsState extends State<Workouts> {
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
                    ? "2 jours par semaine"
                    : language == "a"
                        ? "2 يوم في الأسبوع"
                        : "2 Day`s a Week",
                // '2 Day`s a Week',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
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
                          "https://img.freepik.com/free-photo/portrait-athlete-performing-deadlift-gym-bodybuilding-fitness-concept-mixed-media_392761-1990.jpg?size=626&ext=jpg"),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                language == "f"
                    ? "3 jours par semaine"
                    : language == "a"
                        ? "3 يوم في الأسبوع"
                        : "3 Day`s a Week",
                // '3 Day`s a Week',
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
                                "https://pbs.twimg.com/media/EU7SjkiUcAow87X.jpg")))),
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
                                "https://img.freepik.com/free-photo/young-muscular-guy-pumping-biceps-with-dumbbells-concentrated-flexion-fitness-nutrition-concept-mixed-media_392761-2005.jpg?size=626&ext=jpg")))),
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
                                "https://menshealthandexercise.com/wp-content/uploads/2020/02/Bodybuilding.jpg")))),
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
                                "https://www.desktopbackground.org/p/2012/06/07/402055_the-girl-in-the-gym-drinking-water_1680x1050_h.jpg")))),
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
                                "https://img1.goodfon.com/wallpaper/nbig/d/79/workout-bodybuilding-back-man.jpg")))),
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
                                "https://www.olympusgym.com.cy/wp-content/uploads/2019/11/olympus-gym-final-slider-1024x605.jpg")))),
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
                                "https://gymnavigator.com/img/section-top-bg-01.jpg")))),
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
                                "https://media.istockphoto.com/photos/young-caucasian-sporty-woman-in-orange-shirt-and-ponytail-lifting-in-picture-id1138591041?k=20&m=1138591041&s=612x612&w=0&h=7Ql2e2ztyQChVFHQOyoJpuJWjf32pZz3BWfz4eCMqIc=")))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                language == "f"
                    ? "4 jours par semaine"
                    : language == "a"
                        ? "4 يوم في الأسبوع"
                        : "4 Day`s a Week",
                // '4 Day`s a Week',
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
                                "https://www.muscleandfitness.com/wp-content/uploads/2019/12/Fit-Man-Performing-A-Pullup-In-The-Park.jpg?quality=86&strip=all")))),
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
                                "https://i0.wp.com/post.healthline.com/wp-content/uploads/2019/12/pull-up-pullup-gym-1296x728-header-1296x728.jpg?w=1155&h=1528")))),
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
                                "https://mirafit.co.uk/wp/wp-content/uploads/2018/02/crossfit-expert-does-a-pull-up-on-a-mirafit-half-power-rack-1024x683.jpg")))),
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
                                "http://ocdn.eu/images/pulscms/ZDQ7MDA_/4502f7d3e437061f31c8ee15b2243e0b.jpg")))),
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
                                "https://i0.wp.com/sportsmedicineweekly.com/wp-content/uploads/2020/03/gym_people_exercise.jpg?fit=1155%2C648&ssl=1")))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                language == "f"
                    ? "Mini-entraînements"
                    : language == "a"
                        ? "التدريبات المصغرة"
                        : "Mini Workouts",
                // 'Mini Workouts',
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
                                "https://www.city.ac.uk/__data/assets/image/0005/639833/City_University_Prospectus_2018_L5A3860.jpg")))),
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
                                "https://images.livemint.com/img/2021/08/10/1140x641/20201025_MUM-PC-MN_Gym_Reopen_015_1628583917333_1628583934428.JPG")))),
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
                                "https://api.time.com/wp-content/uploads/2020/03/gym-coronavirus.jpg?w=824&quality=70")))),
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
                                "https://static.toiimg.com/thumb/msid-83483048,imgsize-896783,width-800,height-600,resizemode-75/83483048.jpg")))),
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
                                "https://3.bp.blogspot.com/-vlM7X3vxY4Q/WBM79h8_2WI/AAAAAAAAJ84/OxsXa7-7ah4bZwEXZeBvBLUpvOPs3AtJQCLcB/s1600/Fitness%2BCenter%2Band%2BGym.jpg")))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
