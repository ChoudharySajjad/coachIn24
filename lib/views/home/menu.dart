// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        foregroundColor: themeColor,
        title: Text(
          language == "f"
              ? "Entraîneur IN24"
              : language == "a"
                  ? "المدرب IN24"
                  : "Coach's IN24",
          // 'Coach\'s IN24'
        ),
        centerTitle: true,
        backgroundColor: darkColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,left: 30.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 110.0,
                    ),
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/7d/8f/52/7d8f5226965fdd6fee96196bf758b5cd.jpg'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(color: darkColor, width: 2.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0,left: 30.0),
                  child: Text(
                    language == "f"
                        ? "Développeur"
                        : language == "a"
                            ? "مطور"
                            : "Developer",
                    // "Developer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 90.0, right: 10.0),
                    child: ListTile(
                      onTap: () {},
                      tileColor: Colors.grey,
                      leading: Icon(Icons.info),
                      title: Text(
                        language == "f"
                            ? "Informations personnelles"
                            : language == "a"
                                ? "معلومات شخصية"
                                : "Personal info",
                        // 'Personal info'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 90.0, right: 10.0),
                    child: ListTile(
                      onTap: () {},
                      tileColor: Colors.grey,
                      leading: Icon(Icons.report),
                      title: Text(
                        language == "f"
                            ? "Le progrès"
                            : language == "a"
                                ? "تقدم"
                                : "Progress",
                        // 'Progress'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 90.0, right: 10.0),
                    child: ListTile(
                      onTap: () {},
                      tileColor: Colors.grey,
                      leading: Icon(Icons.settings),
                      title: Text(
                        language == "f"
                            ? "Réglages"
                            : language == "a"
                                ? "إعدادات"
                                : "Settings",
                        // 'Settings'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
