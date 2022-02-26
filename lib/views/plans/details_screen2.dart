import 'package:coachs_in24/views/plans/details_screen3.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsScreen2 extends StatefulWidget {
  String thumbnail;
  String description;
  List<Widget> exercisesList;
  DetailsScreen2({
    Key key,
    @required this.thumbnail,
    @required this.description,
    @required this.exercisesList,
  }) : super(key: key);

  @override
  _DetailsScreen2State createState() => _DetailsScreen2State();
}

class _DetailsScreen2State extends State<DetailsScreen2> {
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
                    language == "f"
                        ? "Programme d'entrainements personnalise"
                        : language == "a"
                            ? "برنامج تدريب شخصي"
                            : "Personalized training program",
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
                    language == "f"
                        ? "Plan Diete personnalise"
                        : language == "a"
                            ? "خطة النظام الغذائي الشخصية"
                            : "Personalized Diet Plan",
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
                    language == "f"
                        ? "Complements alimentaires adapte"
                        : language == "a"
                            ? "المكملات الغذائية تتكيف"
                            : "Food supplements adapted",
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
                    language == "f"
                        ? "Bilan tout les mois"
                        : language == "a"
                            ? "تقرير كل شهر"
                            : "Report every month",
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
                    language == "f"
                        ? "Adjustements selon bilan"
                        : language == "a"
                            ? "تعديلات الميزانية العمومية"
                            : "Balance sheet adjustments",
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
                    language == "f"
                        ? "Echange avec le coach via l'application"
                        : language == "a"
                            ? "التبادل مع المدرب عبر التطبيق"
                            : "Exchange with the coach via the application",
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
                            builder: (context) => DetailsScreen3()));
                  },
                  child: Text(
                    language == "f"
                        ? "PLus d'informations"
                        : language == "a"
                            ? "معلومات اكثر"
                            : "More information",
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
