// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/auth_screens/signup_screen.dart';
import 'package:coachs_in24/views/plans/details_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class FeedPageScreen extends StatefulWidget {
  const FeedPageScreen({Key key, String title}) : super(key: key);

  @override
  _FeedPageScreenState createState() => _FeedPageScreenState();
}

class _FeedPageScreenState extends State<FeedPageScreen> {
  bool container1;
  List<String> images = [
    "https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg",
    "https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg",
    "https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg",
    "https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg",
    "https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg",
    "https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg",
    "https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg",
  ];

  @override
  void initState() {
    container1 = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        //   foregroundColor: Colors.white,
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       UserAccountsDrawerHeader(
        //         currentAccountPicture: CircleAvatar(
        //           backgroundColor: Colors.transparent,
        //           backgroundImage: NetworkImage(
        //               'https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg'),
        //         ),
        //         accountEmail: Text(
        //           'Developer@example.com',
        //           style: TextStyle(fontSize: 12.0),
        //         ),
        //         accountName: Text(
        //           'Developer',
        //           style: TextStyle(fontSize: 18.0),
        //         ),
        //         decoration: BoxDecoration(
        //           color: Color(0xffffcf3f),
        //         ),
        //       ),
        //       ListTile(
        //         // leading: Icon(Icons.add_shopping_cart),
        //         title: Padding(
        //           padding: const EdgeInsets.only(left: 20.0),
        //           child: Text(
        //             'Boutique',
        //             style: TextStyle(fontSize: 14.0),
        //           ),
        //         ),
        //         subtitle: Column(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Text("Supplementry"),
        //             Text("Vetements"),
        //             Text("Accessoires"),
        //           ],
        //         ),
        //       ),
        //       ListTile(
        //         title: Padding(
        //           padding: const EdgeInsets.only(left: 20.0),
        //           child: Text(
        //             'Nutrition',
        //             style: TextStyle(fontSize: 14.0),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/w4.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 180.0, top: 94.0, left: 20.0, bottom: 10.0),
                  child: Container(
                    height: 150,
                    width: 135,
                    clipBehavior: Clip.hardEdge,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        shape: BoxShape.rectangle),
                    child: Column(children: [
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Lorem ipsum\ndolar sit amet.",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Praesent mauris\ndiam, pretium eu.",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 80,
                          clipBehavior: Clip.hardEdge,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                              shape: BoxShape.rectangle),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            GridView(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 160,
              ),
              children: [
                InkWell(
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
                                  thumbnail: 'assets/images/w4.jpeg',
                                )));
                  },
                  child: Container(
                    width: 160,
                    height: 190,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/w4.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  description: language == "f"
                                      ? "6 mois"
                                      : language == "a"
                                          ? "6 أشهر"
                                          : "6 months",
                                  exercisesList: const [],
                                  thumbnail: 'assets/images/a1.jpg',
                                )));
                  },
                  child: Container(
                    width: 160,
                    height: 190,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/a1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  description: language == "f"
                                      ? "9 mois"
                                      : language == "a"
                                          ? "9 أشهر"
                                          : "9 months",
                                  exercisesList: const [],
                                  thumbnail: 'assets/images/w8.jpeg',
                                )));
                  },
                  child: Container(
                    width: 160,
                    height: 190,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/w8.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  description: language == "f"
                                      ? "12 mois"
                                      : language == "a"
                                          ? "12 أشهر"
                                          : "12 months",
                                  exercisesList: const [],
                                  thumbnail: 'assets/images/w2.jpeg',
                                )));
                  },
                  child: Container(
                    width: 160,
                    height: 190,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/w2.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ],
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
