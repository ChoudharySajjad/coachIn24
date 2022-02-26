import 'package:coachs_in24/views/coach_page/coach_choose.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CoachRepresentation2 extends StatefulWidget {
  const CoachRepresentation2({Key key}) : super(key: key);

  @override
  _CoachRepresentation2State createState() => _CoachRepresentation2State();
}

class _CoachRepresentation2State extends State<CoachRepresentation2> {
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://cdn.videvo.net/videvo_files/video/free/2019-03/large_watermarked/180419_Boxing_20_15_preview.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  bool container1;
  bool container2;
  bool container3;
  String title = "اختر لغتك";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CoachChoose()));
            },
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (container1 == false) {
                        setState(() {
                          container2 = false;
                          container1 = true;
                          container3 = false;
                        });
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.width * 0.25,
                            padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                bottom: 10.0,
                                top: 10.0),
                            child: Image(
                              image: AssetImage("assets/images/c.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            language == "f"
                                ? "Pouvez"
                                : language == "a"
                                    ? "علبة"
                                    : "Saad",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Container(
                      child: _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : Container(),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFffcf3f),
                      maximumSize: Size(500, 60),
                      minimumSize: Size(300, 45)),
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Text(
                    language == "f"
                        ? "Voir le programme"
                        : language == "a"
                            ? "انظر البرنامج"
                            : "See the program",
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
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
