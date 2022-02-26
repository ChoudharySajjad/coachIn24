import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

// import 'package:smart_health/api/auth_collection.dart';
// import 'package:smart_health/widget/const.dart';

class Four extends StatefulWidget {
  const Four({Key key}) : super(key: key);

  @override
  _FourState createState() => _FourState();
}

class _FourState extends State<Four> {
  int _currentValue = 100;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // userDetails['Height'] = '${_currentValue.toString()} CM';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '4 of 8',
              style: TextStyle(
                color: Color(0xFFffcf3f).withOpacity(0.5),
                fontSize: 14,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'How tall you are ?',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'Your height is necrssary for establishing a good nutrition plan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/c.png'),
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              NumberPicker(
                infiniteLoop: true,
                itemWidth: 100,
                itemCount: 3,
                itemHeight: 65,
                selectedTextStyle: TextStyle(
                  color: Color(0xFFffcf3f),
                  fontSize: 26,
                ),
                textStyle: TextStyle(
                  color: Colors.white,
                ),
                value: _currentValue,
                minValue: 50,
                maxValue: 200,
                onChanged: (value) => setState(() {
                  _currentValue = value;
                  // userDetails['Height'] = '${_currentValue.toString()} CM';
                }),
              ),
              Text(
                'CM',
                style: TextStyle(
                  color: Color(0xFFffcf3f),
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
