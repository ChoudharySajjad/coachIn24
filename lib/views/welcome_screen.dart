// ignore_for_file: prefer_const_constructors

import 'package:coachs_in24/views/auth_screens/login_screen.dart';
import 'package:coachs_in24/views/auth_screens/signup_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List levels = [
    "inactive",
    "Beginner",
    "Beginner",
    "Beginner",
    "Beginner",
  ];
  // final _pageController = PageController(initialPage: 0);
  // final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("assets/images/chris1.png"),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 90.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFffcf3f),
                    radius: 42,
                    child: Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/run.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    language == "f"
                        ? "Entraîneur`IN24"
                        : language == "a"
                            ? "IN24`المدرب "
                            : "Coach`IN24",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      color: Colors.white,
                      letterSpacing: 1.8,
                    ),
                  ),
                  Text(
                    language == "f"
                        ? "Votre entraîneur personnel"
                        : language == "a"
                            ? "مدربك الشخصي"
                            : "Your Personal Trainer",
                    style: TextStyle(color: Color(0xFFffcf3f), fontSize: 16.0),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 20),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.only(top: 90.0),
            //         child: Container(
            //           padding: EdgeInsets.symmetric(horizontal: 10),
            //           height: 100,
            //           width: MediaQuery.of(context).size.width,
            //           child: PageView(
            //             onPageChanged: (int index) {
            //               _currentPageNotifier.value = index;
            //             },
            //             controller: _pageController,
            //             children: <Widget>[
            //               Center(
            //                 child: Column(
            //                   children: [
            //                     Text(
            //                       language == "f"
            //                           ? "Entraîneur`IN24"
            //                           : language == "a"
            //                               ? "IN24`المدرب "
            //                               : "Coach`IN24",
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 18.0,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsets.only(
            //                           top: 2.0, left: 20.0, right: 20.0),
            //                       child: Text(
            //                         language == "f"
            //                             ? "Bienvenue sur Coach`IN24. 10 ans d'expérience en formation, le tout dans une application puissante, par Developer."
            //                             : language == "a"
            //                                 ? "مرحبًا بكم في Coach`IN24. 10 سنوات من الخبرة التدريبية ، كل ذلك في تطبيق واحد قوي ، بواسطة مطور."
            //                                 : "Welcome to Coach`IN24. 10 years of training experience, all in one powerful app, by Developer.",
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 14.0,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Center(
            //                 child: Column(
            //                   // ignore: prefer_const_literals_to_create_immutables
            //                   children: [
            //                     Text(
            //                       language == "f"
            //                           ? "PROGRAMMES D'ENTRAÎNEMENT"
            //                           : language == "a"
            //                               ? "خطط التمرين"
            //                               : "WORKOUT PLANS",
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 18.0,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsets.only(
            //                           top: 12.0, left: 20.0, right: 20.0),
            //                       child: Text(
            //                         language == "f"
            //                             ? "Plans de salle de sport et de maison adaptés à vos objectifs pour vous assurer d'obtenir des résultats."
            //                             : language == "a"
            //                                 ? "خطط الصالة الرياضية والمنزل التي يتم تخصيصها وفقًا لأهدافك للتأكد من حصولك على النتائج."
            //                                 : "Gym and home plans that are customised to your goals to make sure you get results.",
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                             color: Colors.white, fontSize: 14.0),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Center(
            //                 child: Column(
            //                   // ignore: prefer_const_literals_to_create_immutables
            //                   children: [
            //                     Text(
            //                       language == "f"
            //                           ? "SUIVI"
            //                           : language == "a"
            //                               ? "التتبع"
            //                               : "TRACKING",
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 18.0,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsets.only(
            //                           top: 12.0, left: 20.0, right: 20.0),
            //                       child: Text(
            //                         language == "f"
            //                             ? "Suivez les poids, les séries, les répétitions, prenez des notes et bien plus encore pour suivre vos progrès"
            //                             : language == "a"
            //                                 ? "تتبع الأوزان والمجموعات والممثلين واحتفظ بالملاحظات والمزيد لتبقى على اطلاع دائم بالتقدم الذي تحرزه"
            //                                 : "Track weights, sets, reps, keep notes and more to stay on top of your progress",
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                             color: Colors.white, fontSize: 14.0),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Center(
            //                 child: Column(
            //                   // ignore: prefer_const_literals_to_create_immutables
            //                   children: [
            //                     Text(
            //                       language == "f"
            //                           ? "PLANS DE REPAS"
            //                           : language == "a"
            //                               ? "خطط الوجبة"
            //                               : "MEAL PLANS",
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 18.0,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsets.only(
            //                           top: 5.0, left: 20.0, right: 20.0),
            //                       child: Text(
            //                         language == "f"
            //                             ? "Plans de repas personnalisés générés en fonction de vos données biométriques. Choisissez parmi 3/4/5/6 repas par jour et ajoutez vos propres repas."
            //                             : language == "a"
            //                                 ? "تم إنشاء خطط الوجبات المخصصة بناءً على بيانات المقاييس الحيوية الخاصة بك. اختر من بين 3/4/5/6 وجبات في اليوم وأضف وجباتك الخاصة."
            //                                 : "Personalised meal plans generated based on your biometric data. Choose from 3/4/5/6 meals a day and add your own meals.",
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                             color: Colors.white, fontSize: 12.0),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Center(
            //                 child: Column(
            //                   // ignore: prefer_const_literals_to_create_immutables
            //                   children: [
            //                     Text(
            //                       language == "f"
            //                           ? "SUIVI DES PROGRÈS"
            //                           : language == "a"
            //                               ? "تتبع التقدم"
            //                               : "PROGRESS TRACKING",
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 18.0,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsets.only(
            //                           top: 12.0, left: 20.0, right: 20.0),
            //                       child: Text(
            //                         language == "f"
            //                             ? "Téléchargez vos photos de progression, votre poids et laissez Coach`IN24 vous tenir responsable et obtenir vos résultats."
            //                             : language == "a"
            //                                 ? "قم بتحميل صور التقدم والوزن ودع Coach`IN24 يبقيك مسؤولاً ويحصل على نتائجك."
            //                                 : "Upload your progress pics, weight and let Coach`IN24 keep you accountable and get your results.",
            //                         textAlign: TextAlign.center,
            //                         style: TextStyle(
            //                             color: Colors.white, fontSize: 14.0),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       CirclePageIndicator(
            //         dotColor: Colors.white,
            //         dotSpacing: 10,
            //         selectedDotColor: Colors.yellow,
            //         itemCount: 5,
            //         currentPageNotifier: _currentPageNotifier,
            //       )
            //     ],
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 120),
              child: Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFFffcf3f),
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          primary: Colors.white,
                          maximumSize: Size(300, 60),
                          minimumSize: Size(200, 45)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        language == "f"
                            ? "Inscrivez-vous"
                            : language == "a"
                                ? "اشتراك"
                                : "Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFffcf3f),
                          onPrimary: Color(0xFFffcf3f),
                          maximumSize: Size(300, 60),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFFffcf3f),
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          side: BorderSide(color: Color(0xFFffcf3f)),
                          minimumSize: Size(200, 45)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInScreen()));
                      },
                      child: Text(
                        language == "f"
                            ? "Connexion"
                            : language == "a"
                                ? "تسجيل الدخول"
                                : "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFffcf3f),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 30,
                        bottom: 10,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 10, top: 20),
                              child: Text(
                                "CURATED\nWorkout\nGuides",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 100,
                              backgroundImage:
                                  AssetImage("assets/images/cu1.jpg"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
