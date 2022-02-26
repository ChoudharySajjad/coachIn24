import 'package:coachs_in24/views/plans/details_screen2.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatefulWidget {
  String thumbnail;
  String description;
  List<Widget> exercisesList;

  DetailsScreen({
    Key key,
    @required this.thumbnail,
    @required this.description,
    @required this.exercisesList,
  }) : super(key: key);
  // DetailsScreen({ Key key }) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
            expandedHeight: 400.0,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.thumbnail,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 10.0, top: 20.0),
                child: Text(
                  widget.description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                  title: Text(
                    "Program adapted",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/w1.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                  title: Text(
                    "Exercices varies",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/a1.jpg"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                  title: Text(
                    "Detailed exercise videos",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/w1.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                  title: Text(
                    "Training tips",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/a1.jpg"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
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
                            builder: (context) => DetailsScreen2(
                                  description: language == "f"
                                      ? "Entraîneur`IN24"
                                      : language == "a"
                                          ? "IN24`المدرب "
                                          : "Coach`IN24",
                                  exercisesList: const [],
                                  thumbnail: 'assets/images/a1.jpg',
                                )));
                  },
                  child: Text(
                    language == "f"
                        ? "Achetez ce pack a 250 dh/3mois"
                        : language == "a"
                            ? "اشترِ هذه العبوة بسعر 250 درهمًا / 3 أشهر"
                            : "Buy this pack at 250 dh/3 months",
                    // 'Next',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
