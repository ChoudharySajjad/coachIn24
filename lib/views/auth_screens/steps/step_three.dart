import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Three extends StatefulWidget {
  const Three({Key key}) : super(key: key);

  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  int _currentValue = 18;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
              '3 of 8',
              style: TextStyle(
                color: Color(0xFFffcf3f).withOpacity(0.5),
                fontSize: 14,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'How old are you ?',
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
              'Your age is necrssary for establishing an appropriate plan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          NumberPicker(
            infiniteLoop: true,
            itemHeight: 50,
            itemCount: 5,
            itemWidth: 150,
            selectedTextStyle: TextStyle(
              color: Color(0xFFffcf3f),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            value: _currentValue,
            minValue: 15,
            maxValue: 100,
            onChanged: (value) => setState(
              () {
                _currentValue = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
