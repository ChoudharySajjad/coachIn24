// ignore_for_file: prefer_const_constructors

import 'package:coachs_in24/views/auth_screens/login_screen.dart';
import 'package:coachs_in24/views/feedpage_screen.dart';
import 'package:coachs_in24/views/homepage_screen.dart';
import 'package:coachs_in24/views/userpage_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key, String title}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://thumbs.dreamstime.com/b/muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg'),
              ),
              accountEmail: Text(
                'Developer@example.com',
                style: TextStyle(fontSize: 12.0),
              ),
              accountName: Text(
                'Developer',
                style: TextStyle(fontSize: 18.0),
              ),
              decoration: BoxDecoration(
                color: Color(0xffffcf3f),
              ),
            ),
            ListTile(
              // leading: Icon(Icons.add_shopping_cart),
              title: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Boutique',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Supplementry",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Vetements",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Accessoires",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Nutrition',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
      body: currentIndex == 0
          ? FeedPageScreen()
          : currentIndex == 1
              ? HomePageScreen()
              : currentIndex == 2
                  ? UserPageScreen()
                  : Container(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        showUnselectedLabels: true,
        elevation: 1,
        currentIndex: currentIndex,
        unselectedFontSize: 12.0,
        selectedFontSize: 12.0,
        selectedItemColor: Colors.grey[900],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: currentIndex == 0 ? Icon(Icons.copy) : Icon(Icons.copy),
            label: 'Feed Page',
            backgroundColor: Color(0xFF00695C),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Icon(Icons.home)
                : Icon(Icons.home_outlined),
            label: 'HomePage',
            backgroundColor: Color(0xFF00695C),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? Icon(Icons.contacts_rounded)
                : Icon(Icons.contacts_rounded),
            label: 'User',
            backgroundColor: Color(0xFF00695C),
          ),
        ],
      ),
    );
  }
}
