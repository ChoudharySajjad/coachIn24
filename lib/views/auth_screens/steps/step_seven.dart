// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';

// import 'package:smart_health/api/auth_collection.dart';
// import 'package:smart_health/widget/const.dart';

class Seven extends StatefulWidget {
  const Seven({Key key}) : super(key: key);

  @override
  _SevenState createState() => _SevenState();
}

class _SevenState extends State<Seven> {
  List<Healthy> healthyList;
  List<Unhealthy> unhealthyList;
  @override
  void initState() {
    healthyList = [
      Healthy(
        title: 'Interested in Excercise/Workout/Walking',
      ),
      Healthy(
        title: 'Interested in Diet',
      ),
    ];
    unhealthyList = [
      Unhealthy(
        title: 'Diabetic',
      ),
      Unhealthy(
        title: 'Low BloodPressure',
      ),
      Unhealthy(
        title: 'High BloodPressure',
      ),
      Unhealthy(
        title: 'Heart Patient',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: true,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
          ),
        ),
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '7 of 8',
              style: TextStyle(
                color: Color(0xFFffcf3f).withOpacity(0.5),
                fontSize: 14,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Describe your status ?',
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Are you Healthy or Unhealthy?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Card(
                          child: ExpansionTile(
                            title: Text(
                              'Healthy',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: healthyList.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      healthyList[index],
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Card(
                          child: ExpansionTile(
                            title: Text(
                              'Unhealthy',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: unhealthyList.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      unhealthyList[index],
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Healthy extends StatefulWidget {
  String title;
  Healthy({Key key, @required this.title}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Healthy> createState() => _HealthyState(title: title);
}

class _HealthyState extends State<Healthy> {
  String title;
  _HealthyState({@required this.title});
  bool isChecked;
  @override
  void initState() {
    isChecked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });

        // if (isChecked == true) {
        //   healthStatus.add(title);
        //   userDetails['HealthStatus'] = jsonEncode(healthStatus.join(', '));
        // } else {
        //   healthStatus.remove(title);
        //   userDetails['HealthStatus'] = jsonEncode(healthStatus.join(', '));
        // }
      },
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(title),activeColor: Color(0xFFffcf3f),
      value: isChecked,
    );
  }
}

class Unhealthy extends StatefulWidget {
  String title;
  Unhealthy({Key key, @required this.title}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Unhealthy> createState() => _UnhealthyState(title: title);
}

class _UnhealthyState extends State<Unhealthy> {
  String title;
  _UnhealthyState({@required this.title});
  bool isChecked;
  @override
  void initState() {
    isChecked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });

        // if (isChecked == true) {
        //   healthStatus.add(title);
        //   userDetails['HealthStatus'] = jsonEncode(healthStatus.join(', '));
        // } else {
        //   healthStatus.remove(title);
        //   userDetails['HealthStatus'] = jsonEncode(healthStatus.join(', '));
        // }
      },
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(title),activeColor: Color(0xFFffcf3f),
      value: isChecked,
    );
  }
}
