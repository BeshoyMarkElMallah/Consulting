import 'package:flutter/material.dart';
import 'package:project1/screens/signUpScreen.dart';
import 'package:project1/widgets/customButton.dart';
import 'package:project1/widgets/customFormInput.dart';
import 'package:flutter/cupertino.dart';

class SignUpScreenAdmin extends StatefulWidget {
  static const routename = "/signupscreenAdmin";

  @override
  _SignUpScreenAdminState createState() => _SignUpScreenAdminState();
}

class _SignUpScreenAdminState extends State<SignUpScreenAdmin> {
  void navigateToSignUp(BuildContext ctx){
    Navigator.of(ctx).pushNamed(SignUpScreen.routename);
  }
  @override
  Widget build(BuildContext context) {
    var topPadding = MediaQuery.of(context).padding.top;
    var display = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("التسجيل"),
          centerTitle: true),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: topPadding,
                right: display.width * 0.05,
              ),
              alignment: Alignment.topRight,
              child: Text(
                "انشاء حساب ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
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
                " املئ البيانات من فضلك لاستكمال التسجيل",
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
              height: display.height * 0.03,
            ),
            CustomFormInput(text: "رقم الهاتف"),
            SizedBox(
              height: display.height * 0.03,
            ),
            CustomFormInput(text: "البريد الالكتروني"),
            SizedBox(
              height: display.height * 0.03,
            ),
            CustomFormInput(text: "نوع الوظيفة "),
            SizedBox(
              height: display.height * 0.2,
            ),
            CustomButton(
              backcolor: Colors.deepPurple,
              text: "انشاء الحساب",
              onPressed: () => navigateToSignUp(context),
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            ),
            SizedBox(
              height: display.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "سجل دخول",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 18),
                  ),
                ),
                Text(
                  "  هل لديك حساب بالفعل",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
