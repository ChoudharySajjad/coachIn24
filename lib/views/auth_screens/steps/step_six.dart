import 'package:flutter/material.dart';

class Six extends StatefulWidget {
  const Six({Key key}) : super(key: key);

  @override
  _SixState createState() => _SixState();
}

class _SixState extends State<Six> {
  double _currentValue = 10;
  String lose = '';
  @override
  void initState() {
    lose = (1 - (_currentValue / 100)).toStringAsFixed(2);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // userDetails['Duration'] = '${_currentValue.toString()} Weeks';
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
              '6 of 8',
              style: TextStyle(
                color: Color(0xFFffcf3f).withOpacity(0.5),
                fontSize: 14,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'How long you wish to reach this goal ?',
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
              'Please make sure to set your timeline to achieve your desire goal ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 25,
                activeTrackColor: Colors.lightGreen,
                activeTickMarkColor: Color(0xFFffcf3f),
                inactiveTrackColor: Colors.green.withOpacity(0.25),
                thumbColor: Color(0xFFffcf3f),
                valueIndicatorColor: Color(0xFFffcf3f),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              ),
              child: Slider(
                value: _currentValue,
                min: 1,
                max: 20,
                divisions: 20,
                label: _currentValue.round().toString(),
                onChanged: ((value) {
                  setState(
                    () {
                      _currentValue = value;
                      // userDetails['Duration'] =
                          '${_currentValue.toString()} Weeks';
                      lose = (1 - (_currentValue / 100)).toStringAsFixed(2);
                    },
                  );
                }),
              ),
            ),
          ),
          Text(
            '${_currentValue.round()} Weeks - Gradual',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFFffcf3f),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Text(
              'Lose : $lose kg / weeks',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
