// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/auth_screens/login_screen.dart';
import 'package:coachs_in24/widgets/const.dart';

import 'steps/step_eight.dart';
import 'steps/step_three.dart';
import 'package:flutter/material.dart';
import 'steps/step_four.dart';
import 'steps/step_seven.dart';
import 'steps/step_six.dart';
import 'steps/step_five.dart';
import 'steps/step_one.dart';
import 'steps/step_two.dart';

class StepsPage extends StatefulWidget {
  String username;
  String email;
  String phoneNo;
  StepsPage({
    Key key,
    @required this.username,
    @required this.email,
    @required this.phoneNo,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _StepsPageState createState() => _StepsPageState(
        username: username,
        email: email,
        phoneNo: phoneNo,
      );
}

class _StepsPageState extends State<StepsPage> {
  String username;
  String email;
  String phoneNo;
  String password;
  _StepsPageState({
    @required this.username,
    @required this.email,
    @required this.phoneNo,
  });
  int currentIndex;
  PageController pageController;
  List<Widget> pages;
  @override
  // ignore: must_call_super
  void initState() {
    pages = [
      One(),
      Two(),
      Three(),
      Four(),
      Five(),
      Six(),
      Seven(),
      Eight(),
    ];
    currentIndex = 0;
    pageController = PageController(
      initialPage: currentIndex,
      keepPage: true,
    );
    // userDetails['Username'] = username;
    // userDetails['Email'] = email;
    // userDetails['PhoneNumber'] = phoneNo;
    // userDetails['Status'] = 'Online';
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          allowImplicitScrolling: true,
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            currentIndex > 0
                ? MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentIndex--;
                          pageController.animateToPage(currentIndex,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFFffcf3f),
                    ))
                : Container(),
            currentIndex == 7
                ? MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    // onPressed: () {
                    //   print(userDetails);
                    //   showDialog(
                    //     barrierDismissible: false,
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return processLoading(context, "Authenticating");
                    //     },
                    //   );
                    //   var user = FirebaseAuth.instance.currentUser;
                    //   FirebaseFirestore.instance
                    //       .collection("Users Details")
                    //       .doc(user.uid)
                    //       .set(userDetails)
                    //       .then((_) async {
                    //     SharedPreferences sharedPreferences =
                    //         await SharedPreferences.getInstance();
                    //     sharedPreferences.setString(
                    //         'Username', userDetails['Username']);
                    //     sharedPreferences.setString(
                    //         'PhoneNumber', userDetails['PhoneNumber']);
                    //     sharedPreferences.setString(
                    //         'Email', userDetails['Email']);
                    //     sharedPreferences.setString(
                    //         'ProfilePicture', userDetails['ProfilePicture']);
                    //     userDetails.clear();
                    //     Navigator.of(context).pop();
                    //     pushReplacement(context, home.Drawer());
                    //     print("collection created");
                    //   }).catchError((_) {
                    //     Navigator.of(context).pop();
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(
                    //         content: Text(
                    //           _,
                    //           style: TextStyle(fontSize: 14),
                    //         ),
                    //       ),
                    //     );
                    //     print("an error occured");
                    //   });
                    // },
                    child: Text(
                      language == "f"
                          ? "Soumettre"
                          : language == "a"
                              ? "إرسال"
                              : "Submit",
                      style: TextStyle(
                        color: Color(0xFFffcf3f),
                        fontSize: 16,
                      ),
                    ),
                  )
                : MaterialButton(
                    onPressed: () {
                      if (currentIndex >= 7) {
                        setState(() {
                          currentIndex = 7;
                        });
                      } else {
                        setState(
                          () {
                            currentIndex++;
                            pageController.animateToPage(
                              currentIndex,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                        );
                      }
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: language == "f"
                                ? "Suivant"
                                : language == "a"
                                    ? "التالي"
                                    : "Next",
                            style: TextStyle(
                              color: Color(0xFFffcf3f),
                              fontSize: 16,
                            ),
                          ),
                          WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Color(0xFFffcf3f),
                              )),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
