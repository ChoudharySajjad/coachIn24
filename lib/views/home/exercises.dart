import 'package:coachs_in24/views/plans/details_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class Exercises extends StatefulWidget {
  const Exercises({Key key}) : super(key: key);

  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  List<ImageProvider> imageList = <ImageProvider>[];
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.clockwise;
  Duration frameChangeDuration = Duration(milliseconds: 50);
  bool imagePrecached = false;

  @override
  void initState() {
    // WidgetsBinding.instance
    //     .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: InkWell(
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
              ),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://www.hituni.com/wp-content/uploads/2019/02/Jay-vincent-muscle-tech-2-1182x1600.jpg"),
            ),
          ),
        ),
      ),
    );
  }

  // void updateImageList(BuildContext context) async {
  //   for (int i = 1; i <= 2; i++) {
  //     imageList.add(AssetImage('assets/images/$i.png'));
  //     await precacheImage(
  //       AssetImage(
  //         'assets/images/$i.png',
  //       ),
  //       context,
  //     );
  //   }
  //   setState(() {
  //     imagePrecached = true;
  //   });
  // }
}
