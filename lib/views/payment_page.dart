import 'package:coachs_in24/views/auth_screens/login_screen.dart';
import 'package:coachs_in24/views/plans/best_plan.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => BestPLan()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 10.0, top: 10.0),
                child: Text(
                  language == "f"
                      ? "Choisissez votre mode de paiement :"
                      : language == "a"
                          ? "اختر طريقتك في الدفع:"
                          : "Choose your payment method:",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 30.0),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/w1.png"),
                      height: 25.0,
                      width: 25.0,
                    ),
                    Text(
                      language == "f"
                          ? "Par carte bancaire"
                          : language == "a"
                              ? "عن طريق بطاقة الإئتمان"
                              : "By credit card",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                child: TextField(
                  cursorColor: Colors.white,
                  obscureText: false,
                  readOnly: false,
                  enabled: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    labelText: language == "f"
                        ? "Nom porteur ce carte"
                        : language == "a"
                            ? "إسم صاحب البطاقة"
                            : "Card holder name",
                    labelStyle: TextStyle(color: Color(0xffffcf3f)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
                child: TextField(
                  cursorColor: Colors.white,
                  obscureText: false,
                  readOnly: false,
                  enabled: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    labelText: language == "f"
                        ? "Numero de carte"
                        : language == "a"
                            ? "رقم البطاقة"
                            : "Card number",
                    labelStyle: TextStyle(color: Color(0xffffcf3f)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
                child: TextField(
                  cursorColor: Colors.white,
                  obscureText: false,
                  readOnly: false,
                  enabled: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    labelText: language == "f"
                        ? "CVV"
                        : language == "a"
                            ? "CVV"
                            : "CVV",
                    labelStyle: TextStyle(color: Color(0xffffcf3f)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
                child: TextField(
                  cursorColor: Colors.white,
                  obscureText: false,
                  readOnly: false,
                  enabled: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffffcf3f))),
                    labelText: language == "f"
                        ? "Date d'expiration"
                        : language == "a"
                            ? "تاريخ الانتهاء"
                            : "Expiry Date",
                    labelStyle: TextStyle(color: Color(0xffffcf3f)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFffcf3f),
                        maximumSize: Size(500, 60),
                        minimumSize: Size(300, 45)),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LogInScreen()));
                    },
                    child: Text(
                      language == "f"
                          ? "Valider ie paiement"
                          : language == "a"
                              ? "التحقق من صحة الدفع"
                              : "Validate the payment",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 30.0),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/w1.png"),
                      height: 25.0,
                      width: 25.0,
                    ),
                    Text(
                      language == "f"
                          ? "Par cash plus ou virement"
                          : language == "a"
                              ? "عن طريق الدفع النقدي أو التحويل المصرفي"
                              : "By Cash plus or Bank transfer",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
                child: Text(
                  language == "f"
                      ? "1- Dirigez vous la banque ou cash plus la plus proche:"
                      : language == "a"
                          ? "1- اذهب الى اقرب بنك او كاش:"
                          : "1- Go to the nearest bank or Cash plus:",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
                child: Text(
                  language == "f"
                      ? "2- Effectuez votre paiement en utilisant les informations suivantes:"
                      : language == "a"
                          ? "2- :قم بالدفع باستخدام المعلومات التالية"
                          : "2- Make your payment using the following information:",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
                child: Text(
                  language == "f"
                      ? "BMCE Bank:"
                      : language == "a"
                          ? "BMCE Bank:"
                          : "BMCE Bank:",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 50.0, right: 10.0),
                child: Row(
                  children: [
                    Text(
                      language == "f"
                          ? "RIB:"
                          : language == "a"
                              ? ":التفاصيل المصرفية"
                              : "Bank details:",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        language == "f"
                            ? "Banque alliée:"
                            : language == "a"
                                ? "البنك المتحد"
                                : "Allied Bank:",
                        style:
                            TextStyle(color: Color(0xFF9CA3A9), fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 50.0, right: 10.0),
                child: Row(
                  children: [
                    Text(
                      language == "f"
                          ? "Titulaire:"
                          : language == "a"
                              ? ":مايجب في الوضع الراهن"
                              : "Incumbent:",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        language == "f"
                            ? "Banque alliée:"
                            : language == "a"
                                ? "البنك المتحد"
                                : "Allied Bank:",
                        style:
                            TextStyle(color: Color(0xFF9CA3A9), fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
                child: Text(
                  language == "f"
                      ? "Cash PLus:"
                      : language == "a"
                          ? ":كاش أكثر"
                          : "Cash PLus:",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 50.0, right: 10.0),
                child: Row(
                  children: [
                    Text(
                      language == "f"
                          ? "RIB:"
                          : language == "a"
                              ? ":التفاصيل المصرفية"
                              : "Bank details:",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        language == "f"
                            ? "Banque alliée:"
                            : language == "a"
                                ? "البنك المتحد"
                                : "Allied Bank:",
                        style:
                            TextStyle(color: Color(0xFF9CA3A9), fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
                child: Text(
                  language == "f"
                      ? "3- Enovyer votre recu en piece jointe ici:"
                      : language == "a"
                          ? "3- :أرسل إيصالك كمرفق هنا"
                          : "3- Send your receipt as an attachment here:",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              InkWell(
                onTap: () {
                  pickProfilePicture();
                },
                child: Center(
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
                        colors: const <Color>[
                          Colors.green,
                          Colors.blueGrey,
                        ],
                      ),
                    ),
                    child: Text(
                      language == "f"
                          ? "+ Piece jointe"
                          : language == "a"
                              ? "+ مرفق"
                              : " + Attachment",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
                child: Text(
                  language == "f"
                      ? "ou sur l'adresse email suivante:"
                      : language == "a"
                          ? ":أو على عنوان البريد الإلكتروني التالي"
                          : "Or on the following email address:",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5.0, left: 20.0, right: 10.0, bottom: 30.0),
                child: Text(
                  language == "f"
                      ? "example@gmail.com"
                      : language == "a"
                          ? "example@gmail.com"
                          : "example@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFffcf3f),
                        maximumSize: Size(500, 60),
                        minimumSize: Size(300, 45)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
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
  // Future<File> compressImage(String path, int quality) async {
  //   final newPath = p.join((await getTemporaryDirectory()).path,
  //       '${DateTime.now()}.${p.extension(path)}');
  //   final result = await FlutterImageCompress.compressAndGetFile(
  //     path,
  //     newPath,
  //     quality: quality,
  //   );
  //   return result;
  // }

  Future pickProfilePicture() async {
    FilePickerResult result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg'],
    );
    final pickedFile = File(result.files.single.path);
    if (pickedFile == null) {
      return;
    } else {
      // setState(() async {
      //   profilePicture = await compressImage(pickedFile.path, 35);
      //   userDetails['ProfilePicture'] =
      //       await uploadProfilePicture(profilePicture).whenComplete(() {
      //     Timer(Duration(seconds: 1), () {
      //       setState(() {});
      //     });
      //   }
      //   );
      // });
    }
  }

  // ignore: non_constant_identifier_names
  File(String path) {}
}
