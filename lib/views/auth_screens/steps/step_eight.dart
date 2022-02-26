// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:io';

import 'package:coachs_in24/widgets/const.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class Eight extends StatefulWidget {
  const Eight({Key key}) : super(key: key);

  @override
  _EightState createState() => _EightState();
}

class _EightState extends State<Eight> {
  File profilePicture;
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
              language == "f"
                  ? "8 sur 8"
                  : language == "a"
                      ? "8 من 8"
                      : "8 of 8",
              // '8 of 8',
              style: TextStyle(
                color: Color(0xFFffcf3f).withOpacity(0.5),
                fontSize: 14,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                language == "f"
                    ? "Télécharger une photo de profil ?"
                    : language == "a"
                        ? "تحميل صورة الملف الشخصي؟"
                        : "Upload Profile Picture ?",
                // 'Upload Profile Picture ?',
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
              language == "f"
                  ? "Assurez-vous de télécharger votre photo de profil afin que vous puissiez facilement identifier"
                  : language == "a"
                      ? "يرجى التأكد من تحميل صورة ملفك الشخصي حتى تتمكن من التعرف عليها بسهولة"
                      : "Please make sure to upload your profile picture so that you can easily identified",
              // 'Please make sure to upload your profile picture so that you can easily identified',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          profilePicture == null
              ? Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Color(0xFFffcf3f),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.4),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/chris1.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.4),
                    // image: DecorationImage(
                    //   image: NetworkImage(
                    //     userDetails['ProfilePicture'],
                    //   ),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
          InkWell(
            onTap: () {
              pickProfilePicture();
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.green,
                    Colors.blueGrey,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage('assets/icons/trainer.png'),
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    language == "f"
                        ? "Charger une photo"
                        : language == "a"
                            ? "تحميل الصورة"
                            : "Upload Picture",
                    // 'Upload Picture',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<File> compressImage(String path, int quality) async {
    final newPath = p.join((await getTemporaryDirectory()).path,
        '${DateTime.now()}.${p.extension(path)}');
    final result = await FlutterImageCompress.compressAndGetFile(
      path,
      newPath,
      quality: quality,
    );
    return result;
  }

  Future pickProfilePicture() async {
    FilePickerResult result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg'],
    );
    final pickedFile = File(result.files.single.path);
    if (pickedFile == null) {
      return;
    } else {
      setState(() async {
        // profilePicture = await compressImage(pickedFile.path, 35);
        // userDetails['ProfilePicture'] =
        //     await uploadProfilePicture(profilePicture).whenComplete(() {
        //   Timer(Duration(seconds: 1), () {
        //     setState(() {});
        //   });
        // }
        // );
      });
    }
  }
}
