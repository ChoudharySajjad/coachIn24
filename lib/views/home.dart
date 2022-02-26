import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'home/exercises.dart';
import 'home/menu.dart';
import 'home/tips.dart';
import 'home/trainers.dart';
import 'home/workouts.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ZoomDrawer.of(context).close();
      },
      child: Container(
        decoration: BoxDecoration(
          color: pagesColor,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                pagesColor,
                darkColor.withOpacity(0.25),
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 1,
              foregroundColor: themeColor,
              title: Text(
                language == "f"
                    ? "Entraîneurs`IN24"
                    : language == "a"
                        ? "IN24`المدرب "
                        : "Coach's IN24",
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
            body: _currentIndex == 0
                ? Exercises()
                : _currentIndex == 1
                    ? Workouts()
                    : _currentIndex == 2
                        ? Trainers()
                        : _currentIndex == 3
                            ? Tips()
                            : Container(),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: darkFonts.withOpacity(0.25),
                    spreadRadius: 0.5,
                    blurRadius: 0.5,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: BottomNavigationBar(
                      elevation: 0,
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: Colors.transparent,
                      iconSize: 30,
                      showUnselectedLabels: false,
                      unselectedItemColor: whiteFonts,
                      selectedItemColor: themeColor,
                      currentIndex: _currentIndex,
                      onTap: (i) => setState(() => _currentIndex = i),
                      items: const [
                        BottomNavigationBarItem(
                          label: 'Exercises',
                          icon: ImageIcon(
                            AssetImage('assets/icons/exercises.png'),
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: 'Workouts',
                          icon: ImageIcon(
                            AssetImage('assets/icons/workouts.png'),
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: 'Trainers',
                          icon: ImageIcon(
                            AssetImage('assets/icons/trainer.png'),
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: 'Tips',
                          icon: ImageIcon(
                            AssetImage('assets/icons/tips.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 15, right: 10),
                    child: InkWell(
                      onTap: () {
                        ZoomDrawer.of(context).open();
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/7d/8f/52/7d8f5226965fdd6fee96196bf758b5cd.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppZoomDrawer extends StatefulWidget {
  const AppZoomDrawer({Key key}) : super(key: key);

  @override
  State<AppZoomDrawer> createState() => _AppZoomDrawerState();
}

class _AppZoomDrawerState extends State<AppZoomDrawer> {
  ZoomDrawerController zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      style: DrawerStyle.DefaultStyle,
      menuScreen: MenuScreen(),
      mainScreen: Home(),
      mainScreenScale: 0.30,
      borderRadius: 30.0,
      showShadow: true,
      angle: -12.0,
      isRtl: true,
      disableGesture: true,
      slideWidth: MediaQuery.of(context).size.width * 0.5,
      openCurve: Curves.bounceIn,
      closeCurve: Curves.bounceOut,
    );
  }
}
