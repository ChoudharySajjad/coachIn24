// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/auth_screens/signup_screen.dart';
import 'package:coachs_in24/views/training_level.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key key, String email, String phoneNo, String username})
      : super(key: key);

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String gender = '';
  bool readonly;
  bool isChecked = false;

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        helpText: language == "f"
            ? "Sélectionnez votre âge"
            : language == "a"
                ? "حدد عمرك"
                : "Select your Age",
        initialDate: selectedDate,
        firstDate: DateTime(1980, 1),
        lastDate: DateTime(2050));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            language == "f"
                ? "Détails sur le sexe"
                : language == "a"
                    ? "تفاصيل الجنس"
                    : "Gender Details",
            style: TextStyle(
                color: Color(0xFFffcf3f), fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF9CA3A9),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffcf3f))),
                  child: ListTile(
                    onTap: () {
                      showDialog(context: context, builder: (_) => Gender())
                          .then((value) {
                        setState(() {
                          gender = value;
                        });
                      });
                    },
                    title: Text(
                      language == "f"
                          ? "Le genre"
                          : language == "a"
                              ? "جنس تذكير أو تأنيث"
                              : "Gender",
                    ),
                    trailing: Text(gender),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: TextField(
                    obscureText: false,
                    readOnly: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: language == "f"
                          ? "Poids"
                          : language == "a"
                              ? "وزن"
                              : "Weight",
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: TextField(
                    readOnly: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: language == "f"
                          ? "Hauteur"
                          : language == "a"
                              ? "ارتفاع"
                              : "Height",
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffffcf3f),
                    ),
                  ),
                  child: ListTile(
                    onTap: () {
                      _selectDate(context);
                    },
                    title: Text(
                      language == "f"
                          ? "Âge"
                          : language == "a"
                              ? "عمر"
                              : "Age",
                    ),
                    trailing: Text("${selectedDate.toLocal()}".split(' ')[0]),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFffcf3f),
                        maximumSize: Size(500, 60),
                        minimumSize: Size(300, 45)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrainingLevel()));
                    },
                    child: Text(
                      language == "f"
                          ? "Suivant"
                          : language == "a"
                              ? "التالي"
                              : "Next",
                      // 'Next',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void male(value) {}
}

class Gender extends StatefulWidget {
  const Gender({Key key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String gender = '';
  @override
  void initState() {
    gender = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            language == "f"
                ? "Le genre"
                : language == "a"
                    ? "جنس تذكير أو تأنيث"
                    : "Gender",
          ),
          RadioListTile(
            title: Text(
              language == "f"
                  ? "Mâle"
                  : language == "a"
                      ? "ذكر"
                      : "Male",
            ),
            value: language == "f"
                ? "Mâle"
                : language == "a"
                    ? "ذكر"
                    : "Male",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
              setState(() {});
            },
          ),
          RadioListTile(
            title: Text(
              language == "f"
                  ? "Femelle"
                  : language == "a"
                      ? "أنثى"
                      : "Female",
            ),
            value: language == "f"
                ? "Femelle"
                : language == "a"
                    ? "أنثى"
                    : "Female",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
              setState(() {});
            },
          ),
          RadioListTile(
            title: Text(
              language == "f"
                  ? "Je préfère ne pas le dire"
                  : language == "a"
                      ? "افضل عدم القول"
                      : "Prefer not to Say",
            ),
            value: language == "f"
                ? "Je préfère ne pas le dire"
                : language == "a"
                    ? "افضل عدم القول"
                    : "Prefer not to Say",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, gender);
          },
          child: Text(
            language == "f"
                ? "ANNULER"
                : language == "a"
                    ? "إلغاء"
                    : "CANCEL",
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, gender);
          },
          child: Text(
            language == "f"
                ? "OUI"
                : language == "a"
                    ? "نعم"
                    : "YES",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
