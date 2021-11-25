import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/timePickerScreen.dart';
import 'package:project1/widgets/customButton.dart';
import 'package:project1/widgets/customFormInput.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConsultingScreen extends StatefulWidget {
  static const routename = "/ConsultingScreen";

  @override
  _ConsultingScreenState createState() => _ConsultingScreenState();
}

class _ConsultingScreenState extends State<ConsultingScreen> {
  void navigateToTimePickerScreen(BuildContext ctx){
    Navigator.of(ctx).pushNamed(TimePickerScreen.routename);
  }
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    var rightPadding = MediaQuery.of(context).padding;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(centerTitle: true,title: Text("تطبيق الاستشارات"),backgroundColor: Colors.transparent,),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                "assets/consultingPage.png",
                fit: BoxFit.cover,
              ),
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(
                  right: display.width * 0.05, top: display.height * 0.02),
              alignment: Alignment.topRight,
              child: Text(
                "الاستشارات",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: display.width * 0.05,
              ),
              alignment: Alignment.topRight,
              child: Text(
                "حجز الاستشارات و تحديد تفاصيل الاستشارة ",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: display.height * 0.03,
            ),
            CustomFormInput(text: "الاسم"),
            SizedBox(
              height: display.height * 0.02,
            ),
            CustomFormInput(text: "رقم الهاتف"),
            SizedBox(
              height: display.height * 0.02,
            ),
            CustomFormInput(text: "البريد الالكتروني"),
            
            SizedBox(
              height: display.height * 0.02,
            ),
            CustomFormInput(
              text: "... الاستشارة ",
              length: 10,
            ),
            
           
            SizedBox(
              height: display.height * 0.02,
            ),
            CustomButton(
              backcolor: Colors.deepPurple,
              text: "حجز",
              onPressed: () =>navigateToTimePickerScreen(context),
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            ),
            SizedBox(
              height: display.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
