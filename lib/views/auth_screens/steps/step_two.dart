// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  const Two({Key key}) : super(key: key);

  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  List<GenderCard> genderList;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    genderList = [
      GenderCard(
        title: 'Male',
        isMale: true,
        isSelected: true,
      ),
      GenderCard(
        title: 'Female',
        isMale: false,
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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2 of 8',
              style: TextStyle(
                color: Color(0xFFffcf3f).withOpacity(0.5),
                fontSize: 14,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Male or Female ?',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'Men and women need different\nnutrition approaches',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: genderList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < genderList.length; i++) {
                          if (i == index) {
                            setState(() {
                              genderList[i].isSelected = true;
                            });
                          } else {
                            setState(() {
                              genderList[i].isSelected = false;
                            });
                          }
                        }
                      });
                    },
                    child: genderList[index].build(context),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  String title;
  bool isMale;
  bool isSelected;
  GenderCard({
    Key key,
    @required this.title,
    @required this.isMale,
    @required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: isSelected
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.white,
                  Colors.lightGreenAccent,
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
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.25),
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          isMale
              ? Image.asset("assets/icons/trainer.png",height: 70,width: 70,)
              // Text(
              //     '👦🏻',
              //     style: TextStyle(fontSize: 50),
              //   )
              : Image.asset("assets/images/q2.png",height: 70,width: 70,),
              // Text(
              //     '👩🏻',
              //     style: TextStyle(fontSize: 50),
              //   ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Color(0xFFffcf3f) : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
