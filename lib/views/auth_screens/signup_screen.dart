// ignore_for_file: prefer_const_constructors


import 'package:coachs_in24/views/gender_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure1;
  // bool _isObscure2;
  @override
  initState() {
    _isObscure1 = true;
    // _isObscure2 = true;
    super.initState();
  }

  // TextEditingController fnameController = TextEditingController();
  // TextEditingController lnameController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // TextEditingController cnfrmPassController = TextEditingController();

  // registerNewUser(fname, lname, email, password, cnfrmPassword) async {
  //   String finalPassword;
  //   if (password == cnfrmPassword) {
  //     setState(() {
  //       finalPassword = password;
  //     });
  //     final response = await http.post(
  //         Uri.parse('https://einnovention.co.uk/gymshark/public/api/Register'),
  //         headers: {
  //           "Accept": "applocation/json",
  //           "Content-Type": "application/x-www-form-urlencoded"
  //         },
  //         body: {
  //           'first_name': fname,
  //           'last_name': lname,
  //           'email': email,
  //           'password': finalPassword,
  //         });
  //     // print('Response Code=================== ${response.statusCode}');

  //     var data = jsonDecode(response.body);

  //     if (response.statusCode == 200) {
  //       showDialog(
  //         barrierDismissible: true,
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             backgroundColor: Colors.white,
  //             title: Text('${data['Message']}'),
  //             // content: Text(
  //             //     data['errors'].toString().split('[').last.split(']').first),
  //           );
  //         },
  //       ).whenComplete(() {
  //         if (data['Message'] == 'Successfully Registed!') {
  //           Navigator.pushReplacement(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => GenderScreen(
  //                 email: '',
  //                 phoneNo: '',
  //                 username: '',
  //               ),
  //             ),
  //           );
  //         }
  //       });
  //     } else {
  //       showDialog(
  //         barrierDismissible: true,
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             backgroundColor: Colors.white,
  //             title: Text('${data['Message']}'),
  //             // content:  Text(
  //             //     data['errors'].toString().split('[').last.split(']').first),
  //           );
  //         },
  //       );
  //     }
  //   } else if (email == '' ||
  //       finalPassword == '' ||
  //       password != cnfrmPassword) {
  //     showDialog(
  //       barrierDismissible: true,
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           backgroundColor: Color(0xffffd8c9),
  //           title: Text(
  //             language == "f"
  //                 ? "Remplissez correctement le formulaire"
  //                 : language == "a"
  //                     ? "املأ النموذج بشكل صحيح"
  //                     : "Fill the form properly",
  //           ),
  //           // content: Text(
  //           //     data['errors'].toString().split('[').last.split(']').first),
  //         );
  //       },
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: Text(
        //     language == "f"
        //         ? "Inscrivez-vous"
        //         : language == "a"
        //             ? "اشتراك"
        //             : "Sign Up",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.transparent,
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back, color: Colors.white),
        //     onPressed: () {
        //       Navigator.pushReplacement(context,
        //           MaterialPageRoute(builder: (context) => WelcomeScreen()));
        //     },
        //   ),
        // ),
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 8.0),
                  child: TextField(
                    // controller: emailController,
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
                          ? "E-mail"
                          : language == "a"
                              ? "بريد الالكتروني"
                              : "Email",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
                  child: TextField(
                    // controller: emailController,
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
                Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
                  child: TextField(
                    // controller: passwordController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    obscureText: _isObscure1,
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
                            icon: Icon(_isObscure1
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                _isObscure1 = !_isObscure1;
                              });
                            })),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),

                // Padding(
                //   padding: EdgeInsets.only(left: 20.0),
                //   child: Text(
                //     language == "f"
                //         ? "Prénom"
                //         : language == "a"
                //             ? "الاسم الاول"
                //             : "First Name",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       border: Border(
                //         bottom: BorderSide(color: Colors.grey),
                //       ),
                //     ),
                //     child: TextField(
                //       controller: fnameController,
                //       style: TextStyle(color: Colors.white),
                //       cursorColor: Colors.white,
                //       obscureText: false,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         suffixIcon: Icon(
                //           Icons.account_circle,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 30.0,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0),
                //   child: Text(
                //     language == "f"
                //         ? "Nom de famille"
                //         : language == "a"
                //             ? "اسم العائلة"
                //             : "Last Name",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       border: Border(
                //         bottom: BorderSide(color: Colors.grey),
                //       ),
                //     ),
                //     child: TextField(
                //       controller: lnameController,
                //       style: TextStyle(color: Colors.white),
                //       cursorColor: Colors.white,
                //       obscureText: false,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         suffixIcon: Icon(
                //           Icons.account_circle,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 30.0,
                // ),
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
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       border: Border(
                //         bottom: BorderSide(color: Colors.grey),
                //       ),
                //     ),
                //     child: TextField(
                //       controller: emailController,
                //       style: TextStyle(color: Colors.white),
                //       cursorColor: Colors.white,
                //       obscureText: false,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         suffixIcon: Icon(
                //           Icons.mail,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 10.0,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0, top: 20.0),
                //   child: Text(
                //     language == "f"
                //         ? "Mot de passe"
                //         : language == "a"
                //             ? "كلمة المرور"
                //             : "Password",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       border: Border(
                //         bottom: BorderSide(color: Colors.grey),
                //       ),
                //     ),
                //     child: TextField(
                //       controller: passwordController,
                //       cursorColor: Colors.white,
                //       style: TextStyle(color: Colors.white),
                //       obscureText: _isObscure1,
                //       decoration: InputDecoration(
                //           border: InputBorder.none,
                //           suffixIcon: IconButton(
                //               icon: Icon(
                //                 _isObscure1 == true
                //                     ? Icons.visibility_off
                //                     : Icons.visibility,
                //               ),
                //               color: Colors.white,
                //               onPressed: () {
                //                 setState(() {
                //                   _isObscure1 = !_isObscure1;
                //                 });
                //               })),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 10.0,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0, top: 20.0),
                //   child: Text(
                //     language == "f"
                //         ? "Confirmez le mot de passe"
                //         : language == "a"
                //             ? "تأكيد كلمة المرور"
                //             : "Confirm Password",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       border: Border(
                //         bottom: BorderSide(color: Colors.grey),
                //       ),
                //     ),
                //     child: TextField(
                //       controller: cnfrmPassController,
                //       cursorColor: Colors.white,
                //       style: TextStyle(color: Colors.white),
                //       obscureText: _isObscure2,
                //       decoration: InputDecoration(
                //           border: InputBorder.none,
                //           suffixIcon: IconButton(
                //               icon: Icon(_isObscure2 == true
                //                   ? Icons.visibility_off
                //                   : Icons.visibility),
                //               color: Colors.white,
                //               onPressed: () {
                //                 setState(() {
                //                   _isObscure2 = !_isObscure2;
                //                 });
                //               })),
                //     ),
                //   ),
                // ),

                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFffcf3f),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xFFffcf3f),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      maximumSize: Size(120, 60),
                      minimumSize: Size(100, 50),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GenderScreen()));
                      // registerNewUser(
                      //     fnameController.text,
                      //     lnameController.text,
                      //     emailController.text,
                      //     passwordController.text,
                      //     cnfrmPassController.text
                      //     );
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
                SizedBox(height: 20),
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
        ),
      ),
    );
  }
}
