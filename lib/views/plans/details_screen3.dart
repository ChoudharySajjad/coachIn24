import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailsScreen3 extends StatefulWidget {
  const DetailsScreen3({Key key}) : super(key: key);

  @override
  _DetailsScreen3State createState() => _DetailsScreen3State();
}

class _DetailsScreen3State extends State<DetailsScreen3> {
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
              Navigator.pop(context);
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => BestPLan()));
            },
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
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
                        ? "Choisir ce plan pour 2000dh/3mois"
                        : language == "a"
                            ? "اختر هذه الخطة لمدة 2000 درهم / 3 أشهر"
                            : "Choose this plan for 2000dh/3months",
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
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
