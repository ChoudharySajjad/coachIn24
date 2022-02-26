// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, dead_code, unnecessary_string_interpolations, unused_element

import 'package:coachs_in24/views/auth_screens/subcription_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObscure;
  @override
  initState() {
    _isObscure = true;
    super.initState();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  loginUser(
    email,
    password,
  ) async {
    final response = await http.post(
        Uri.parse('https://einnovention.co.uk/gymshark/public/api/login'),
        headers: {
          "Accept": "applocation/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: {
          'email': email,
          'password': password,
        });
    // print('Response Code=================== ${response.statusCode}');

    // var data = jsonDecode(response.body);

    if (response.statusCode == 202) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Container(
            height: 150,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/w2.jpeg"),
                    )
                  ],
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Successfull",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PrefaceSans",
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Log In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PrefaceSans",
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF9CA3A9),
                            fixedSize: Size(
                                MediaQuery.of(context).size.width / 2.5, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SubcriptionScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Ok",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFffcf3f)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      // List errors = data["errors"];
      //   String x = "";
      //   for (var i = 0; i < errors.length; i++) {
      //     if (i == errors.length - 1) {
      //       x = x + "${errors[i]}";
      //     } else {
      //       x = x + "${errors[i]}\n";
      //     }
      //   }

      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Container(
            height: 150,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/w1.png"),
                    )
                  ],
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Type Correctly",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PrefaceSans",
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Go Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PrefaceSans",
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF9CA3A9),
                            fixedSize: Size(
                                MediaQuery.of(context).size.width / 2.5, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Ok",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFffcf3f)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );

      // showDialog(
      //   barrierDismissible: true,
      //   context: context,

      //   builder: (context) {
      //     return AlertDialog(
      //       backgroundColor: Colors.white,
      //       title: Text("${data["message"]}"),
      //       // content: Text(
      //       //     data['errors'].toString().split('[').last.split(']').first),
      //     );
      //   },
      // );
    }

    @override
    Widget build(BuildContext context) {
      // ignore: todo
      // TODO: implement build
      throw UnimplementedError();
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: Padding(
        //     padding: const EdgeInsets.only(right: 50.0),
        //     child: Row(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Image.asset(
        //           "assets/images/a.png",
        //           height: 30,
        //         ),
        //         SizedBox(
        //           width: 5.0,
        //         ),
        //         Text(
        //           language == "f"
        //               ? "Entraîneur`IN24"
        //               : language == "a"
        //                   ? "المدرب `IN24"
        //                   : "Coach`IN24",
        //           style: TextStyle(
        //               color: Color.fromRGBO(255, 207, 63, 1),
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ],
        //     ),
        //   ),
        //   backgroundColor: Colors.black,
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back, color: Color(0xFF9CA3A9)),
        //     onPressed: () {
        //       Navigator.pushReplacement(context,
        //           MaterialPageRoute(builder: (context) => WelcomeScreen()));
        //     },
        //   ),
        // ),
        body: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFffcf3f),
                    radius: 42,
                    child: Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/run.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
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
                ),
                Center(
                  child: Text(
                    language == "f"
                        ? "Votre entraîneur personnel"
                        : language == "a"
                            ? "مدربك الشخصي"
                            : "Your Personal Trainer",
                    style: TextStyle(color: Color(0xFFffcf3f), fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0),
                //   child: Text(
                //     language == "f"
                //         ? "E-mail"
                //         : language == "a"
                //             ? "بريد الالكتروني"
                //             : "Email",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 8.0),
                  child: TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    obscureText: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFffcf3f), width: 2.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 20, bottom: 20, top: 15, right: 20),
                      hintText: language == "f"
                          ? "Nom d'utilisateur"
                          : language == "a"
                              ? "اسم المستخدم"
                              : "Username",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 8.0),
                  child: TextField(
                    controller: passwordController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFffcf3f), width: 2.0),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 20, bottom: 20, top: 15, right: 20),
                        hintText: language == "f"
                            ? "Mot de passe"
                            : language == "a"
                                ? "كلمة المرور"
                                : "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            })),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFffcf3f),
                        maximumSize: Size(120, 60),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFFffcf3f),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        minimumSize: Size(100, 50)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubcriptionScreen()));
                      // loginUser(emailController.text, passwordController.text);
                    },
                    child: Text(
                      language == "f"
                          ? "Connexion"
                          : language == "a"
                              ? "تسجيل الدخول"
                              : "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 50),
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

                // Padding(
                //   padding: EdgeInsets.only(
                //     top: 30.0,
                //   ),
                //   child: Center(
                //     child: InkWell(
                //       onTap: () {
                //         Navigator.pushReplacement(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => SignUpScreen()));
                //       },
                //       child: Text(
                //         language == "f"
                //             ? "Réinitialiser le mot de passe?"
                //             : language == "a"
                //                 ? "إعادة تعيين كلمة المرور؟"
                //                 : "Reset password?",
                //         style: TextStyle(color: Colors.white, fontSize: 14.0),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
