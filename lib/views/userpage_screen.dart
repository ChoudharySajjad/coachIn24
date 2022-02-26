import 'package:coachs_in24/views/plans/details_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class UserPageScreen extends StatefulWidget {
  const UserPageScreen({Key key}) : super(key: key);

  @override
  _UserPageScreenState createState() => _UserPageScreenState();
}

class _UserPageScreenState extends State<UserPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/images/c.png"),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    language == "f"
                        ? "User Name"
                        : language == "a"
                            ? "User Name"
                            : "User Name",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          language == "f"
                              ? "Program"
                              : language == "a"
                                  ? "Program"
                                  : "Program",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          language == "f"
                              ? "Nutrition"
                              : language == "a"
                                  ? "Nutrition"
                                  : "Nutrition",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          language == "f"
                              ? "Evolution"
                              : language == "a"
                                  ? "Evolution"
                                  : "Evolution",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => DetailsScreen(
                        //               description:
                        //                   "ABS works by releasing and then reapplying or 'pumping' the brakes to a motorcycle wheel or car wheels in heavy braking situations.When a lock-up is detected, ABS pumps the brakes, 100's of times a second. This stops the wheel or wheels from skidding and helps keep the driver in control of the vehicle.",
                        //               exercisesList: const [],
                        //               thumbnail: 'assets/images/w1.png',
                        //             )));
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              language == "f"
                                  ? "Workout\n   0/12"
                                  : language == "a"
                                      ? "Workout\n   0/12"
                                      : "Workout\n   0/12",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              language == "f"
                                  ? "Completed\n    0/12"
                                  : language == "a"
                                      ? "Completed\n    0/12"
                                      : "Completed\n    0/12",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              language == "f"
                                  ? " Time\nMinutes"
                                  : language == "a"
                                      ? " Time\nMinutes"
                                      : " Time\nMinutes",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          language == "f"
                              ? "Week 1"
                              : language == "a"
                                  ? "Week 1"
                                  : "Week 1",
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          language == "f"
                              ? "Week 2"
                              : language == "a"
                                  ? "Week 2"
                                  : "Week 2",
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          language == "f"
                              ? "Week 3"
                              : language == "a"
                                  ? "Week 3"
                                  : "Week 3",
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          language == "f"
                              ? "Week 4"
                              : language == "a"
                                  ? "Week 4"
                                  : "Week 4",
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
            ],
          ),
        ),
      ),
    );
  }
}
