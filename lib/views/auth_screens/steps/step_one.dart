// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// import 'package:smart_health/api/auth_collection.dart';
// import 'package:smart_health/widget/const.dart';

class One extends StatefulWidget {
  const One({Key key}) : super(key: key);

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  List<GoalCard> goalsList;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // userDetails['Goal'] = 'Shedding Fat';
    goalsList = [
      GoalCard(
        title: 'Shedding Fat',
        subtitle: 'Most common goal of the people.',
        isSelected: true,
      ),
      GoalCard(
        title: 'Building Muscles',
        subtitle: 'This involves plenty of hard lifts.',
        isSelected: false,
      ),
      GoalCard(
        title: 'Improving Endurance',
        subtitle: 'This motivates you to improve your endurance.',
        isSelected: false,
      ),
      GoalCard(
        title: 'Increasing Flexibility',
        subtitle: 'This will improve your flexibility.',
        isSelected: false,
      ),
      GoalCard(
        title: 'Toning',
        subtitle: 'This will modify your eating habits.',
        isSelected: false,
      ),
      GoalCard(
        title: 'Find Motivation',
        subtitle: 'Find a way to motivate yourself.',
        isSelected: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: true,
        elevation: 1,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1 of 8',
              style: TextStyle(
                color: Color(0xFFffcf3f).withOpacity(0.5),
                fontSize: 14,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'What is your goal ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFFffcf3f),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: goalsList.length,
          itemBuilder: (context, index) {
            return InkWell(
              splashFactory: NoSplash.splashFactory,
              onTap: () {
                setState(() {
                  for (int i = 0; i < goalsList.length; i++) {
                    if (i == index) {
                      setState(() {
                        goalsList[i].isSelected = true;
                        // userDetails['Goal'] = goalsList[i].title;
                      });
                    } else {
                      setState(() {
                        goalsList[i].isSelected = false;
                      });
                    }
                  }
                });
              },
              child: goalsList[index].build(context),
            );
          },
        ),
      ),
    );
  }
}

class GoalCard extends StatelessWidget {
  String title;
  String subtitle;
  bool isSelected;
  GoalCard({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 25, top: 5, bottom: 5),
      decoration: BoxDecoration(
        gradient: isSelected
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.lightGreen,
                  Colors.orangeAccent,
                ],
              )
            : LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.white,
                  Colors.grey,
                ],
              ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.25),
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: ListTile(
        dense: true,
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 1,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
