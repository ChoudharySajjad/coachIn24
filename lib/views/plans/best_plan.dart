import 'package:coachs_in24/views/plans/details_screen.dart';
import 'package:coachs_in24/views/payment_page.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class BestPLan extends StatefulWidget {
  const BestPLan({Key key}) : super(key: key);

  @override
  _BestPLanState createState() => _BestPLanState();
}

class _BestPLanState extends State<BestPLan> {
  bool container1;
  bool container2;
  bool container3;
  bool container4;

  @override
  void initState() {
    container1 = true;
    container2 = false;
    container3 = true;
    container4 = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  language == "f"
                      ? "Choisissez votre forfait"
                      : language == "a"
                          ? "اختر خطتك"
                          : "Choose Your PLan",
                  // "Vous preferiez?",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        thumbnail: 'assets/images/w1.png',
                                      )));
                          if (container1 == true) {
                            setState(() {
                              container2 = true;
                              container1 = false;
                              container3 = true;
                              container4 = true;
                            });
                          }
                        },
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.width * 0.5,
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
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Image(
                                  image: NetworkImage(
                                      "https://c0.wallpaperflare.com/preview/244/648/954/fitness-men-sports-gym.jpg"),
                                  // AssetImage(
                                  //   "assets/images/hiit.png",
                                  // ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                language == "f"
                                    ? "3 mois"
                                    : language == "a"
                                        ? "3 أشهر"
                                        : "3 months",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: InkWell(
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
                                          thumbnail: 'assets/images/w1.png',
                                        )));
                            if (container2 == true) {
                              setState(() {
                                container2 = false;
                                container1 = true;
                                container3 = true;
                                container4 = true;
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: MediaQuery.of(context).size.width * 0.5,
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Image(
                                    image: NetworkImage(
                                        "https://3.bp.blogspot.com/-vlM7X3vxY4Q/WBM79h8_2WI/AAAAAAAAJ84/OxsXa7-7ah4bZwEXZeBvBLUpvOPs3AtJQCLcB/s1600/Fitness%2BCenter%2Band%2BGym.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  language == "f"
                                      ? "6 mois"
                                      : language == "a"
                                          ? "6 أشهر"
                                          : "6 months",
                                  // "GYM WORKOUTS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: InkWell(
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
                                          thumbnail: 'assets/images/w1.png',
                                        )));
                            if (container3 == true) {
                              setState(() {
                                container2 = true;
                                container1 = true;
                                container3 = false;
                                container4 = true;
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: MediaQuery.of(context).size.width * 0.5,
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Image(
                                    image: NetworkImage(
                                        "https://media.istockphoto.com/photos/holding-weight-and-sitting-picture-id1277242852?b=1&k=20&m=1277242852&s=170667a&w=0&h=JRJsVDFKO_i9omBAMNySqCfwvRTB-yeVrjJY2jd7JZw="),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  language == "f"
                                      ? "12 mois"
                                      : language == "a"
                                          ? "12 أشهر"
                                          : "12 months",
                                  // "GYM WORKOUTS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          description: language == "f"
                                              ? "Personnaliser"
                                              : language == "a"
                                                  ? "أضفى طابع شخصي"
                                                  : "Personalise",
                                          exercisesList: const [],
                                          thumbnail: 'assets/images/w1.png',
                                        )));
                            if (container4 == true) {
                              setState(() {
                                container2 = true;
                                container1 = true;
                                container3 = true;
                                container4 = false;
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: MediaQuery.of(context).size.width * 0.5,
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    bottom: 10.0,
                                    top: 10.0),
                                decoration: BoxDecoration(
                                  color: container4 == true
                                      ? Colors.grey
                                      : Color(0xFFffcf3f),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Image(
                                    image: NetworkImage(
                                        "https://api.time.com/wp-content/uploads/2020/03/gym-coronavirus.jpg?w=824&quality=70"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  language == "f"
                                      ? "Personnaliser"
                                      : language == "a"
                                          ? "أضفى طابع شخصي"
                                          : "Personalise",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
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
                  padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
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
                                builder: (context) => PaymentPage()));
                      },
                      child: Text(
                        language == "f"
                            ? "Suivant"
                            : language == "a"
                                ? "التالي"
                                : "Next",
                        // 'Next',
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
      ),
    );
  }
}
