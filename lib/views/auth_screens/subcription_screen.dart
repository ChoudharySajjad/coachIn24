// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coachs_in24/views/dashboard.dart';
import 'package:coachs_in24/views/welcome_screen.dart';
import 'package:coachs_in24/widgets/const.dart';
import 'package:flutter/material.dart';

class SubcriptionScreen extends StatefulWidget {
  const SubcriptionScreen({Key key}) : super(key: key);

  @override
  _SubcriptionScreenState createState() => _SubcriptionScreenState();
}

class _SubcriptionScreenState extends State<SubcriptionScreen> {
  bool container1;
  bool container2;
  bool container3;
  @override
  void initState() {
    container1 = true;
    container2 = false;
    container3 = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          language == "f"
              ? "Entraîneur`IN24"
              : language == "a"
                  ? "المدرب `IN24"
                  : "Coach`IN24",
          style:
              TextStyle(color: Color.fromRGBO(255, 207, 63, 1), fontSize: 25.0),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Text(
                    language == "f"
                        ? "Abonnez-vous pour obtenir un accès complet à Coach`IN 24"
                        : language == "a"
                            ? "اشترك للحصول على وصول كامل إلى Coach`IN 24"
                            : "Subcribe to get full\naccess to Coach`IN24",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 23.0),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                      language == "f"
                          ? "Nous obtiendrons ce qui suit :"
                          : language == "a"
                              ? "سوف نحصل على ما يلي:"
                              : "We will get the following:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: 18.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                    language == "f"
                        ? "1. Plans d'entraînement en salle de sport et à domicile par développeur."
                        : language == "a"
                            ? "1. خطط تدريب الجيم والمنزل من المطور"
                            : "1. Gym and Home training plans by Developer.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white, fontSize: 14.0, height: 1.8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                      language == "f"
                          ? "2. Suivez tous les poids, répétitions, sets et plus encore."
                          : language == "a"
                              ? "2. تتبع جميع الأوزان والتكرارات والمجموعات والمزيد"
                              : "2. Track all weights,reps, sets and more.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                      language == "f"
                          ? "3. Suivez votre progression dans vos poids grâce à des graphiques pour la semaine, le mois et tout le temps."
                          : language == "a"
                              ? "3. تتبع مدى تقدمك في الأوزان من خلال الرسوم البيانية للأسبوع والشهر وكل الأوقات"
                              : "3. Track how you progress in your weights through graphs for week, month and all time.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                      language == "f"
                          ? "4. Des plans de repas personnalisés avec la possibilité de changer et d'ajouter les vôtres."
                          : language == "a"
                              ? "4. خطط وجبات شخصية مع خيار التبديل وإضافة خطط وجبات خاصة بك"
                              : "4. Personalised meal plans with the option to switch and add your own.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                      language == "f"
                          ? "5. Enregistrez vos progrès via des images et des mesures."
                          : language == "a"
                              ? "5. سجل تقدمك عبر الصور والقياسات"
                              : "5. Record your progress via pictures and measurements.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                      language == "f"
                          ? "6. Bibliothèque de contenu pour vous renseigner sur la formation."
                          : language == "a"
                              ? "6. مكتبة المحتوى لك للتعرف على التدريب"
                              : "6. Library of content for you to learn about training.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                      language == "f"
                          ? "7. L'abonnement vous donne accès à tout le contenu."
                          : language == "a"
                              ? "7. الاشتراك يتيح لك الوصول إلى جميع المحتويات"
                              : "7. Subcription gets you access to all content.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                      language == "f"
                          ? "8. Nouveau contenu ajouté régulièrement."
                          : language == "a"
                              ? "8. محتوى جديد يضاف بانتظام"
                              : "8. New content added regularly.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          if (container1 == true) {
                            setState(() {
                              container2 = true;
                              container1 = false;
                              container3 = true;
                            });
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.45,
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                          decoration: BoxDecoration(
                            color: container1 == true
                                ? Colors.grey
                                : Color(0xFFffcf3f),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                language == "f"
                                    ? "Rs 44,66 par jour"
                                    : language == "a"
                                        ? "44.66 روبية في اليوم"
                                        : "Rs 44.66 per day",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.33,
                                  clipBehavior: Clip.hardEdge,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      shape: BoxShape.rectangle),
                                  child: Column(
                                    children: [
                                      Text(
                                        language == "f"
                                            ? "Annuellement Rs 16,300.00"
                                            : language == "a"
                                                ? "سنويا 16300.0 روبية"
                                                : "Annually Rs 16,300.0",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0),
                                      ),
                                      Text(
                                        language == "f"
                                            ? "facturé annuellement"
                                            : language == "a"
                                                ? "دفع سنوى"
                                                : "billed Annually",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (container2 == true) {
                            setState(() {
                              container2 = false;
                              container1 = true;
                              container3 = true;
                            });
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.45,
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                          decoration: BoxDecoration(
                            color: container2 == true
                                ? Colors.grey
                                : Color(0xFFffcf3f),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                language == "f"
                                    ? "Rs 60,00 par jour"
                                    : language == "a"
                                        ? "60.00 روبية في اليوم"
                                        : "Rs 60.00 per day",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.33,
                                  clipBehavior: Clip.hardEdge,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      shape: BoxShape.rectangle),
                                  child: Column(
                                    children: [
                                      Text(
                                        language == "f"
                                            ? "Trimestriel Rs 5 400,00"
                                            : language == "a"
                                                ? "ربع سنوي 5،400.00 روبية"
                                                : "Quartely\nRs 5,400.00",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0),
                                      ),
                                      Text(
                                        language == "f"
                                            ? "facturé trimestriellement"
                                            : language == "a"
                                                ? "دفع فصلية"
                                                : "billed Quartely",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (container3 == true) {
                            setState(() {
                              container2 = true;
                              container1 = true;
                              container3 = false;
                            });
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.45,
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                          decoration: BoxDecoration(
                            color: container3 == true
                                ? Colors.grey
                                : Color(0xFFffcf3f),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                language == "f"
                                    ? "Rs 71,67 par jour"
                                    : language == "a"
                                        ? "71.67 روبية في اليوم"
                                        : "Rs 71.67 per day",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.33,
                                  clipBehavior: Clip.hardEdge,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      shape: BoxShape.rectangle),
                                  child: Column(
                                    children: [
                                      Text(
                                        language == "f"
                                            ? "Mensuel Rs 2,150.00"
                                            : language == "a"
                                                ? "شهريًا 2،150.00 روبية"
                                                : "Monthly\nRs 2,150.00",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0),
                                      ),
                                      Text(
                                        language == "f"
                                            ? "facturé mensuellement"
                                            : language == "a"
                                                ? "تدفع شهريا"
                                                : "billed Monthly",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                                builder: (context) => Dashboard()));
                      },
                      child: Text(
                        language == "f"
                            ? "Suivant"
                            : language == "a"
                                ? "التالي"
                                : "Next",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                      language == "f"
                          ? "L'abonnement ne fonctionne pas ? Restaurer"
                          : language == "a"
                              ? "الاشتراك لا يعمل؟ يعيد"
                              : "Subcription not Working? Restore",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, height: 1.5)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                      language == "f"
                          ? "En continuant, vous acceptez notre politique de confidentialité et nos termes et conditions. En acceptant les termes et conditions de (Coach`IN24), nous vous créerons un compte qui vous permettra d'accéder à notre contenu sur la plupart des appareils iOS et Android."
                          : language == "a"
                              ? "من خلال الاستمرار ، فإنك تقبل سياسة الخصوصية والشروط والأحكام الخاصة بنا. بالموافقة على الشروط والأحكام لـ (Coach`IN24) ، سننشئ لك حسابًا يسمح لك بالوصول إلى المحتوى الخاص بنا على معظم أجهزة iOS و Android."
                              : "By continuing you accept our privacy policy and terms and conditions. In agreeing terms and conditions for (Coach`IN24) we will create you an account that will allow you to access our content on most iOS and Android devices.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: 12.0, height: 1.3)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF9CA3A9),
                        maximumSize: Size(100, 60),
                        minimumSize: Size(50, 40)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    },
                    child: Text(
                      language == "f"
                          ? "Se déconnecter"
                          : language == "a"
                              ? "تسجيل خروج"
                              : "Log Out",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
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
